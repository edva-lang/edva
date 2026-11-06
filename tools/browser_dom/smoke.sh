#!/usr/bin/env bash
set -euo pipefail
ulimit -v 4194304
ulimit -c 0
cd "$(dirname "$0")/../.."
work=$(mktemp -d /tmp/edva-dom-smoke.XXXXXX)
trap 'rm -rf "$work"' EXIT
timeout 45s ./edva tests/browser_dom/smoke.dva \
  -target wasm32-unknown-unknown --no-cache -o "$work/smoke.wasm" </dev/null
timeout 20s node --disable-wasm-trap-handler --max-old-space-size=256 \
  tools/browser_dom/smoke.mjs "$work" </dev/null
