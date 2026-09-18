#!/usr/bin/env bash
# Re-copy product skills from the monorepo (or a local pingram-io/skills clone).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="${1:-}"
if [[ -z "$SRC" ]]; then
  if [[ -d "$ROOT/../serverless/skills" ]]; then
    SRC="$ROOT/../serverless/skills"
  elif [[ -d "$ROOT/../skills" ]]; then
    SRC="$ROOT/../skills"
  else
    echo "Usage: $0 /path/to/pingram-io/skills" >&2
    exit 1
  fi
fi
DEST="$ROOT/skills"
shopt -s nullglob
copied=0
for dir in "$SRC"/pingram-*; do
  [[ -d "$dir" ]] || continue
  name="$(basename "$dir")"
  rm -rf "$DEST/$name"
  cp -R "$dir" "$DEST/$name"
  echo "synced $name"
  copied=$((copied + 1))
done
echo "Done ($copied skills). Kept skills/pingram (MCP skill) as-is."
