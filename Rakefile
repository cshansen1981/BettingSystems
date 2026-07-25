# Rakefile -- drive the "bets" org-table from the command line via emacsclient.
#
# Requires a running Emacs server (`M-x server-start`, or `(server-start)` in
# your init).  The tasks load JuniSystemet/bets-table.el into that server and
# call `my/org-table-upsert-file'.
#
# Examples:
#   # append a new row (#, Vundet, Saldo, Bankroll are computed by #+TBLFM):
#   rake bets:upsert ROW=41 DAG=20-07-26 KAMP="Danmark - Sverige" TYPE="O. 2.5" \
#        EV=8.65 RESULTAT=2-1 ODDS=2.05 INDSATS=12.5 WON=1
#
#   # update only some fields of an existing row (WON=1 win/void, 0 loss):
#   rake bets:upsert ROW=15 RESULTAT=0-1 WON=0

require "shellwords"

ROOT     = __dir__
BETS_EL  = File.join(ROOT, "JuniSystemet", "bets-table.el")
BETS_ORG = File.join(ROOT, "JuniSystemet", "bets.org")
TABLE    = "bets"

# ENV variable => org-table column header.
COLUMNS = {
  "DAG"      => "Dag",
  "KAMP"     => "Kamp",
  "TYPE"     => "Type",
  "EV"       => "EV",
  "RESULTAT" => "Resultat",
  "ODDS"     => "Odds",
  "INDSATS"  => "Indsats",
  "WON"      => "W",
}.freeze

# Emacs client binary and optional server socket, both overridable via ENV.
EMACSCLIENT  = ENV.fetch("EMACSCLIENT", "emacsclient")
EMACS_SOCKET = ENV["EMACS_SOCKET"]

# Render a Ruby string as an elisp string literal (quote/backslash escaped).
def elisp_string(value)
  %("#{value.to_s.gsub(/[\\"]/) { |c| "\\#{c}" }}")
end

# Build the elisp alist form from whichever COLUMNS ENV vars are present.
def entries_from_env
  COLUMNS.filter_map do |env, column|
    next unless ENV.key?(env)
    "(#{elisp_string(column)} . #{elisp_string(ENV[env])})"
  end
end

def emacsclient_eval(form)
  cmd = [EMACSCLIENT]
  cmd += ["--socket-name", EMACS_SOCKET] if EMACS_SOCKET
  cmd += ["--eval", form]
  puts cmd.shelljoin
  ok = system(*cmd)
  abort("emacsclient failed -- is the Emacs server running? (M-x server-start)") unless ok
end

namespace :bets do
  desc "Insert or update a row. ROW=<n> plus any of " \
       "DAG KAMP TYPE EV RESULTAT ODDS INDSATS WON"
  task :upsert do
    row = ENV["ROW"] or abort("ROW is required, e.g. ROW=41")
    entries = entries_from_env
    if entries.empty?
      abort("No column values given (#{COLUMNS.keys.join(', ')})")
    end

    alist = "'(#{entries.join(' ')})"
    form  = "(progn (load #{elisp_string(BETS_EL)}) " \
            "(my/org-table-upsert-file #{elisp_string(BETS_ORG)} " \
            "#{elisp_string(TABLE)} #{elisp_string(row)} #{alist}))"

    emacsclient_eval(form)
  end

  desc "Refresh the summary statistics table (win%, streaks, max odds won)"
  task :stats do
    form = "(progn (load #{elisp_string(BETS_EL)}) " \
           "(with-current-buffer (find-file-noselect #{elisp_string(BETS_ORG)}) " \
           "(when (buffer-modified-p) " \
           "(error \"Buffer has unsaved changes; save or revert it first\")) " \
           "(my/bets-refresh-stats) (save-buffer)))"
    emacsclient_eval(form)
  end
end
