#!/usr/bin/env bash
set -euo pipefail
ulimit -v 4194304
ulimit -c 0
cd "$(dirname "$0")/../.."
work=$(mktemp -d /tmp/edva-dom-tests.XXXXXX)
trap 'rm -rf "$work"' EXIT
if timeout 20s ./edva tests/browser_dom/core.dva -o "$work/native" \
    >"$work/native.log" 2>&1 </dev/null; then
  echo "std/dom unexpectedly compiled for a native target" >&2
  exit 1
fi
rg -q E5047 "$work/native.log"
for fixture in core list events; do
  timeout 45s ./edva "tests/browser_dom/$fixture.dva" \
    -target wasm32-unknown-unknown --no-cache -o "$work/$fixture.wasm" </dev/null
done
for fixture in 411_static_arity_overloads 412_generic_callback_layouts 413_generic_record_ram_fields; do
  timeout 45s ./edva "tests/pass/$fixture.dva" \
    -target wasm32-unknown-unknown --no-cache -o "$work/$fixture.wasm" </dev/null
done
timeout 45s node --disable-wasm-trap-handler --max-old-space-size=256 \
  tools/browser_dom/test.mjs "$work" </dev/null
