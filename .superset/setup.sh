#!/usr/bin/env bash
# Prepare a new Superset workspace for MiscWriting.
# There are no packages to install. Setup checks the tools the makefiles need,
# then copies the gitignored working files (docx, pptx, images, Obsidian config...)
# from the main checkout. It is idempotent and never overwrites existing files.
set -uo pipefail

ws="${SUPERSET_WORKSPACE_PATH:-$PWD}"
root="${SUPERSET_ROOT_PATH:-}"

# "Dependencies": pandoc and $INI_HOME/common.mk (included by every makefile).
command -v pandoc >/dev/null 2>&1 || echo "warning: pandoc not found; make targets that convert md/docx will fail"
if [ -z "${INI_HOME:-}" ] || [ ! -f "$INI_HOME/common.mk" ]; then
  echo "warning: \$INI_HOME/common.mk not found; the makefiles include it"
fi

if [ -z "$root" ] || [ ! -d "$root" ]; then
  echo "SUPERSET_ROOT_PATH not set or missing; skipping copy of untracked files"
  exit 0
fi
if [ "$(cd "$root" && pwd -P)" = "$(cd "$ws" && pwd -P)" ]; then
  echo "workspace is the root checkout; nothing to copy"
  exit 0
fi

copied=0
while IFS= read -r -d '' f; do
  case "$f" in
    *~|*.DS_Store|*/~\$*|~\$*|*/bkup|*/bkup/*|*.pytest_cache/*) continue ;;
  esac
  [ -e "$ws/$f" ] && continue
  mkdir -p "$ws/$(dirname "$f")"
  # -c: APFS clone (instant, no extra disk) where supported; fall back to plain copy.
  cp -c -p "$root/$f" "$ws/$f" 2>/dev/null || cp -p "$root/$f" "$ws/$f" || { echo "failed: $f"; continue; }
  copied=$((copied + 1))
done < <(git -C "$root" ls-files -z --others --ignored --exclude-standard)

echo "copied $copied untracked file(s) from $root"
