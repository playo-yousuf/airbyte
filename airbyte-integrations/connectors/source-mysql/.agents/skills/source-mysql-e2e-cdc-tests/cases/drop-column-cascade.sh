#!/usr/bin/env bash
set -euo pipefail

HERE="$(cd "$(dirname "$0")" && pwd)"
SKILL="$(cd "$HERE/.." && pwd)"

STEP_NAME="${STEP_NAME:-cdc-drop-column-cascade}" \
MUTATE_SQL="$SKILL/fixtures/sql/mutate-drop-column-cascade.sql" \
  exec "$HERE/incremental-replay.sh"
