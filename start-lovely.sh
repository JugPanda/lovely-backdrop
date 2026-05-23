#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PAGE_URL="file://${SCRIPT_DIR}/index.html"

BROWSER=""
for candidate in chromium chromium-browser google-chrome google-chrome-stable /snap/bin/chromium; do
  if command -v "$candidate" >/dev/null 2>&1; then
    BROWSER="$(command -v "$candidate")"
    break
  elif [[ -x "$candidate" ]]; then
    BROWSER="$candidate"
    break
  fi
done

if [[ -z "$BROWSER" ]]; then
  echo "No Chromium-based browser found. Install Chromium or edit this script to point to your browser." >&2
  exit 1
fi

EXTRA_ARGS=()
if [[ "$(id -u)" == "0" ]]; then
  EXTRA_ARGS+=(--no-sandbox)
fi

exec "$BROWSER" \
  --autoplay-policy=no-user-gesture-required \
  --start-fullscreen \
  --disable-infobars \
  --overscroll-history-navigation=0 \
  "${EXTRA_ARGS[@]}" \
  "$PAGE_URL"
