;;; bets-table.el --- upsert rows into a named org-table -*- lexical-binding: t; -*-

;;; Commentary:
;; Insert or update rows in an org-table by column name.
;;
;; The table is addressed either at point (`my/org-table-upsert') or by
;; its `#+NAME:' (`my/org-table-upsert-named').  Rows are identified by
;; the value of their first column.  Columns are addressed by their
;; header name via an alist of (COLUMN-NAME . VALUE).
;;
;; Example (the "bets" table in bets.org):
;;
;;   (my/org-table-upsert-named
;;    "bets" 41
;;    '(("Dag"      . "20-07-26")
;;      ("Kamp"     . "Danmark - Sverige")
;;      ("Type"     . "O. 2.5")
;;      ("EV"       . 8.65)
;;      ("Resultat" . "2-1")
;;      ("Odds"     . 2.05)
;;      ("Indsats"  . 12.5)
;;      ("Vundet"   . 25.5)))
;;
;; The #, Saldo and Bankroll columns are formula-driven (#+TBLFM), so
;; only pass the input columns -- the rest are recomputed on save.

;;; Code:

(require 'org)
(require 'org-table)
(require 'seq)
(require 'cl-lib)

(defun my/org-table-header ()
  "Return the header row (list of column-name strings) of the table at point.
The header is the first non-hline row of the table."
  (seq-find #'listp (org-table-to-lisp)))

(defun my/org-table-column-index (name &optional header)
  "Return the 1-based column index of column NAME in the table at point.
HEADER defaults to `my/org-table-header'."
  (let ((header (or header (my/org-table-header))))
    (1+ (or (cl-position name header :test #'string=)
            (error "No column named %S in table" name)))))

(defun my/org-table-goto-row (row-key)
  "Move point to the data row whose first column equals ROW-KEY.
ROW-KEY is compared as a trimmed string.  Return non-nil if found."
  (goto-char (org-table-begin))
  (let ((target (org-trim (format "%s" row-key)))
        found)
    (while (and (not found) (< (point) (org-table-end)))
      (when (and (org-at-table-p) (not (org-at-table-hline-p)))
        (when (string= (org-trim (org-table-get-field 1)) target)
          (setq found t)))
      (unless found (forward-line 1)))
    found))

(defun my/org-table-set-fields (entries &optional header)
  "At the current table row, set fields from ENTRIES.
ENTRIES is an alist of (COLUMN-NAME . VALUE); COLUMN-NAME is a string
matching a header cell, VALUE is anything printable via `%s'."
  (let ((header (or header (my/org-table-header))))
    (dolist (cell entries)
      (org-table-get-field (my/org-table-column-index (car cell) header)
                           (format "%s" (cdr cell))))))

(defun my/org-table-upsert (row-key entries &optional no-recalc)
  "Insert or update a row in the org table at point.
ROW-KEY is matched against the first column.  If a matching row exists,
the columns named in ENTRIES are updated; otherwise a new row is appended
and its first column set to ROW-KEY plus the ENTRIES.

ENTRIES is an alist of (COLUMN-NAME . VALUE), e.g.
  \\='((\"Dag\" . \"20-07-26\") (\"Kamp\" . \"A - B\") (\"Odds\" . 2.10))

Unless NO-RECALC is non-nil, the table is realigned and its `#+TBLFM'
formulas recomputed afterwards (so computed columns like #, Saldo and
Bankroll update automatically)."
  (unless (org-at-table-p)
    (error "Point is not in an org table"))
  (let ((header (my/org-table-header)))
    (save-excursion
      (if (my/org-table-goto-row row-key)
          (my/org-table-set-fields entries header)
        ;; Not found -> append a new data row before the closing hline.
        (goto-char (org-table-end))
        (forward-line -1)
        (while (and (org-at-table-hline-p) (> (point) (org-table-begin)))
          (forward-line -1))
        (org-table-insert-row t)                       ; insert below current
        (org-table-get-field 1 (format "%s" row-key))
        (my/org-table-set-fields entries header))
      (unless no-recalc
        ;; Point is on the inserted/updated row; recompute it and every
        ;; later data row (Saldo/Bankroll cascade forward via @-1).
        (my/org-table-recompute-tail)))))

(defun my/org-table-recompute-tail ()
  "Recompute formulas from the current data row through the last one.

A whole-table recalc is not usable here: the column formula
$11=@-1-$8+$9 is evaluated on the first data row (Org @2), where @-1
crosses the header hline and raises \"Row descriptor -1 leads outside
table\".  Instead each affected row is recomputed with a single-line
`org-table-recalculate', which is valid from the second data row on
because @-1 then names a real preceding row.

Two passes are run per row on purpose: this table's `#+TBLFM' lists
$10=$11-211.50 before $11, so a single pass would compute Saldo from a
still-empty Bankroll.

The first data row is skipped -- its Bankroll comes from the field
formula @2$11, which a column-formula recalc would blank."
  (beginning-of-line)
  (let ((end (copy-marker (org-table-end))))
    (unwind-protect
        (while (and (< (point) end) (org-at-table-p))
          (when (and (not (org-at-table-hline-p))
                     (> (org-table-current-dline) 1))
            (org-table-recalculate)
            (org-table-recalculate))
          (forward-line 1))
      (set-marker end nil))))

(defun my/org-table-upsert-named (name row-key entries &optional no-recalc)
  "Like `my/org-table-upsert', but locate the table named NAME first.
NAME is the value of a `#+NAME:' keyword preceding the table in the
current buffer."
  (save-excursion
    (goto-char (point-min))
    (let ((case-fold-search t))
      (unless (re-search-forward
               (format "^[ \t]*#\\+NAME:[ \t]*%s[ \t]*$" (regexp-quote name))
               nil t)
        (error "No table named %S in %s" name (buffer-name))))
    (forward-line 1)
    (unless (org-at-table-p)
      (error "No table follows #+NAME: %s" name))
    (my/org-table-upsert row-key entries no-recalc)))

(defun my/org-table-upsert-file (file name row-key entries &optional no-recalc)
  "Open FILE, upsert ROW-KEY/ENTRIES into table NAME, then save the buffer.
Intended for non-interactive use via `emacsclient --eval'.  Returns the
absolute path of FILE.  See `my/org-table-upsert-named' for the meaning
of NAME, ROW-KEY, ENTRIES and NO-RECALC.

Signal an error, changing nothing, if FILE is already visited in a
buffer with unsaved modifications -- saving here would also persist
those pending edits."
  (with-current-buffer (find-file-noselect file)
    (when (buffer-modified-p)
      (error "Buffer %s has unsaved changes; save or revert it first"
             (buffer-name)))
    (my/org-table-upsert-named name row-key entries no-recalc)
    (save-buffer)
    (buffer-file-name)))

(provide 'bets-table)
;;; bets-table.el ends here
