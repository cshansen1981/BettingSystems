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
;;      ("W"        . 1)))
;;
;; The #, Vundet, Saldo and Bankroll columns are formula-driven (#+TBLFM), so
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
    (unless no-recalc (ignore-errors (my/bets-refresh-stats)))
    (save-buffer)
    (buffer-file-name)))

;;;; Summary statistics --------------------------------------------------------
;;
;; The stats live in a small `#+NAME: stats' table.  They can't be pure
;; #+TBLFM formulas: streaks need sequential logic Calc lacks, and the
;; Resultat column is non-numeric so Calc can't even tell settled rows from
;; pending ones.  So they are computed here and written into the table on
;; every upsert (and via `rake bets:stats').

(defun my/bets--data-rows (name)
  "Return the data rows of the table named NAME (header and hlines removed)."
  (save-excursion
    (goto-char (point-min))
    (let ((case-fold-search t))
      (unless (re-search-forward
               (format "^[ \t]*#\\+NAME:[ \t]*%s[ \t]*$" (regexp-quote name)) nil t)
        (error "No table named %S" name)))
    (forward-line 1)
    (unless (org-at-table-p) (error "No table after #+NAME: %s" name))
    (cdr (seq-remove (lambda (r) (eq r 'hline)) (org-table-to-lisp)))))

(defun my/bets-stats (&optional name)
  "Compute win/streak/odds statistics from the bets table NAME (default \"bets\").
Per row: won = W=1 and Odds>1; lost = W=0 and Resultat set; void = W=1 and
Odds<=1; pending = Resultat empty.  Voids and pending are skipped -- they
neither count toward win% nor break a streak.  Returns a plist."
  (let ((rows (my/bets--data-rows (or name "bets")))
        (wins 0) (losses 0) (winrun 0) (lossrun 0)
        (maxwin 0) (maxloss 0) (maxodds 0.0)
        (oddsum 0.0) (betcount 0))
    (dolist (r rows)
      (let* ((res  (org-trim (or (nth 5 r) "")))
             (odds (string-to-number (or (nth 6 r) "0")))
             (indsats (string-to-number (or (nth 7 r) "0")))
             (w    (org-trim (or (nth 9 r) "")))
             (pending (string= res ""))
             (won  (and (string= w "1") (> odds 1.0)))
             (void (and (string= w "1") (<= odds 1.0)))
             (lost (and (string= w "0") (not pending))))
        (cond
         (won  (setq wins (1+ wins) winrun (1+ winrun) lossrun 0)
               (when (> winrun maxwin) (setq maxwin winrun))
               (when (> odds maxodds) (setq maxodds odds)))
         (lost (setq losses (1+ losses) lossrun (1+ lossrun) winrun 0)
               (when (> lossrun maxloss) (setq maxloss lossrun))))
        ;; Average odds is over every actual bet (stake > 0), counting
        ;; pending rows, but excluding voids (odds <= 1 pull it down) and
        ;; skip-days (Indsats = 0).
        (when (and (> indsats 0) (not void))
          (setq oddsum (+ oddsum odds) betcount (1+ betcount)))))
    (list :winpct (if (> (+ wins losses) 0) (/ (* 100.0 wins) (+ wins losses)) 0.0)
          :maxwin maxwin :maxloss maxloss :maxodds maxodds
          :avgodds (if (> betcount 0) (/ oddsum betcount) 0.0)
          :wins wins :losses losses)))

(defun my/bets-refresh-stats (&optional stats-name bets-name)
  "Write statistics from the bets table into the #+NAME: STATS-NAME table.
STATS-NAME defaults to \"stats\", BETS-NAME to \"bets\".  Fills columns 2-6
of the single data row (Gevinst-%, win streak, loss streak, max odds won,
average odds)."
  (let* ((s (my/bets-stats (or bets-name "bets")))
         (vals `((2 . ,(format "%.1f" (plist-get s :winpct)))
                 (3 . ,(number-to-string (plist-get s :maxwin)))
                 (4 . ,(number-to-string (plist-get s :maxloss)))
                 (5 . ,(format "%.2f" (plist-get s :maxodds)))
                 (6 . ,(format "%.2f" (plist-get s :avgodds))))))
    (save-excursion
      (goto-char (point-min))
      (when (re-search-forward
             (format "^[ \t]*#\\+NAME:[ \t]*%s[ \t]*$" (regexp-quote (or stats-name "stats")))
             nil t)
        (forward-line 1)
        (when (org-at-table-p)
          (goto-char (org-table-begin))
          (forward-line 1)                    ; header row -> data row
          (dolist (cell vals)
            (org-table-get-field (car cell) (cdr cell)))
          (org-table-align))))))

(provide 'bets-table)
;;; bets-table.el ends here
