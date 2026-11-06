#!/usr/bin/env bash
set -euo pipefail
# Chromium reserves a large virtual address range; cap data memory instead.
ulimit -d 4194304
ulimit -c 0
cd "$(dirname "$0")/../.."
work=$(mktemp -d /tmp/edva-dom-browser.XXXXXX)
trap 'rm -rf "$work"' EXIT
timeout 45s ./edva tests/browser_dom/smoke.dva \
  -target wasm32-unknown-unknown --no-cache -o "$work/smoke.wasm" </dev/null
cp tools/browser_dom/browser-smoke.html "$work/index.html"
timeout 40s python3 tools/browser_dom/browser-smoke.py "$work" </dev/null
