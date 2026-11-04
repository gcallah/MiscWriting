#!/usr/bin/env bash
# Run button: serve the workspace as static files for previewing .md/.html.
# Superset doesn't assign ports, so pick a port from the workspace name
# (stable across restarts) and move up until one is free. This lets parallel
# workspaces run side by side.
set -euo pipefail

ws="${SUPERSET_WORKSPACE_PATH:-$PWD}"
cd "$ws"
name="${SUPERSET_WORKSPACE_NAME:-$(basename "$ws")}"

port_free() { python3 -c 'import socket,sys; s=socket.socket(); s.bind(("127.0.0.1", int(sys.argv[1])))' "$1" 2>/dev/null; }

port=$(( 8100 + $(printf '%s' "$name" | cksum | cut -d' ' -f1) % 800 ))
tries=0
until port_free "$port"; do
  port=$((port + 1)); tries=$((tries + 1))
  [ "$tries" -ge 200 ] && { echo "no free port found" >&2; exit 1; }
done

pidfile="$(git rev-parse --path-format=absolute --git-path superset-run.pid)"
echo $$ > "$pidfile"
echo "Previewing $ws at http://127.0.0.1:$port/"
exec python3 -m http.server "$port" --bind 127.0.0.1
