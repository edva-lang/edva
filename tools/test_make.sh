#!/usr/bin/env bash
# Run in an isolated checkout: exercises real builds and touches seed timestamps.
set -euo pipefail
ulimit -v 4194304
ulimit -Hv 4194304
cd "$(dirname "$0")/.."
logs=$(mktemp -d /tmp/edva-make-test.XXXXXX)
echo "Build regression logs: $logs"

build_and_check() {
    local name=$1
    shift
    timeout 240s make -j8 edva "$@" > "$logs/$name.log" 2>&1
    timeout 30s make -q edva "$@"
    local revision
    revision=$(git rev-parse --short HEAD)
    ./edva --version | grep -F "$revision"
    echo "$name: PASS"
}

build_and_check initial
# Objects already exist here: the old bootstrap deleted them after make
# cached their timestamps, causing missing-object link failures.
touch seed/ir/edva.ll
build_and_check entry-seed-refresh
touch seed/ir/parser.ll
build_and_check other-seed-refresh

# Backend selection must invalidate once, then leave the graph up to date.
build_and_check epoll POLL_BACKEND=epoll
build_and_check poll POLL_BACKEND=poll

# Preserve the old executable while forcing a genuine seed-only bootstrap.
timeout 30s make clean > "$logs/clean.log" 2>&1
mv edva "$logs/previous-edva"
build_and_check cold
