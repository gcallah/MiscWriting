#!/usr/bin/env bash
# Stop the preview server started by run.sh (setup starts nothing long-lived).
set -uo pipefail
cd "${SUPERSET_WORKSPACE_PATH:-$PWD}" || exit 0
pidfile="$(git rev-parse --path-format=absolute --git-path superset-run.pid 2>/dev/null)" || exit 0
if [ -f "$pidfile" ]; then
  pid="$(cat "$pidfile")"
  if kill -0 "$pid" 2>/dev/null && ps -p "$pid" -o command= | grep -q 'http.server'; then
    kill "$pid" && echo "stopped preview server (pid $pid)"
  fi
  rm -f "$pidfile"
fi
exit 0
