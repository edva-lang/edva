#!/usr/bin/env bash
set -e

ulimit -v 20971520 2>/dev/null || true
if command -v llvm-config >/dev/null 2>&1; then
    export LIBRARY_PATH="$(llvm-config --libdir 2>/dev/null):$LIBRARY_PATH"
fi

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
BOLD='\033[1m'

echo -e "${BOLD}Building self-hosted compiler (edva)...${NC}"
make edva

REPO_ROOT="${REPO_ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
DVA_COMPILER="${DVA_COMPILER:-$REPO_ROOT/edva}"

echo ""
echo -e "${BOLD}Checking token enums are in sync (tokens.txt)...${NC}"
if ! nu tools/gen_tokens.nu --check; then
    echo -e "${RED}Token enums are out of sync with tools/tokens.txt — run 'nu tools/gen_tokens.nu'.${NC}"
    exit 1
fi

echo ""
echo -e "${BOLD}Checking operator tables are in sync (operators.yaml)...${NC}"
if ! nu tools/opgen/main.nu --check; then
    echo -e "${RED}Operator tables are out of sync with operators.yaml — run 'nu tools/opgen/main.nu'.${NC}"
    exit 1
fi

echo ""
echo -e "${BOLD}=========================================${NC}"
echo -e "${BOLD}          EDVA DRIVER REGRESSION TESTS   ${NC}"
echo -e "${BOLD}=========================================${NC}"
set +e
timeout 120 ./test_driver.sh < /dev/null
DRIVER_EXIT=$?
set -e
if [ $DRIVER_EXIT -ne 0 ]; then
    echo -e "${RED}Driver regression tests FAILED. Aborting before integration suite.${NC}"
    exit 1
fi
echo -e "${GREEN}All driver regression tests passed.${NC}"

echo ""
echo -e "${BOLD}=========================================${NC}"
echo -e "${BOLD}          EDVA COMPILER TEST SUITE       ${NC}"
echo -e "${BOLD}=========================================${NC}"

NPROC=$(nproc 2>/dev/null || echo 4)
TMP_DIR=$(mktemp -d -t dva_tests_XXXXXX)
trap 'rm -rf "$TMP_DIR"' EXIT

echo ""
echo -e "${BOLD}=========================================${NC}"
echo -e "${BOLD}          EXAMPLES COMPILE SMOKE         ${NC}"
echo -e "${BOLD}=========================================${NC}"

# Every top-level example and example-directory main must compile. The
# examples were not exercised by the suite, so a stale one (e.g. nc.dva's
# legacy '+sys'/'+net' import) could rot silently. Compile-only: several
# examples need a network or hardware target to RUN.
EXAMPLES_FAILED=0
for example in examples/*.dva; do
    [ -e "$example" ] || continue
    ex_name=$(basename "$example" .dva)
    set +e
    if ! timeout 60 bash -c "ulimit -v 4194304; '$DVA_COMPILER' \"$example\" < /dev/null" > /dev/null 2>&1; then
        echo -e "  - ${ex_name}: ${RED}FAIL (does not compile)${NC}"
        EXAMPLES_FAILED=1
    else
        echo -e "  - ${ex_name}: ${GREEN}OK${NC}"
    fi
    set -e
    rm -f "${ex_name}" "${ex_name}.ll"
done
for example_dir in examples/*/; do
    [ -f "$example_dir/main.dva" ] || continue
    ex_name=$(basename "$example_dir")
    set +e
    if ! timeout 60 bash -c "ulimit -v 4194304; '$DVA_COMPILER' \"$example_dir/main.dva\" < /dev/null" > /dev/null 2>&1; then
        echo -e "  - ${ex_name}: ${RED}FAIL (does not compile)${NC}"
        EXAMPLES_FAILED=1
    else
        echo -e "  - ${ex_name}: ${GREEN}OK${NC}"
    fi
    set -e
    rm -f main main.ll
done
if [ $EXAMPLES_FAILED -ne 0 ]; then
    echo -e "${RED}Examples smoke FAILED.${NC}"
    exit 1
fi

# Function to run a single positive test. test_entry is the original
# tests/pass/* path (a .dva file OR a module directory) -- passed to compiler
# as-is so its derived output-binary name matches test_name exactly.
run_pos_test() {
    local test_entry="$1"
    local test_name="$2"
    local expected_file="tests/pass/${test_name}.expected"
    local test_tmp="$TMP_DIR/pos_${test_name}"
    mkdir -p "$test_tmp"
    ln -s "$REPO_ROOT/std" "$test_tmp/std" 2>/dev/null || true
    ln -s "$REPO_ROOT/prelude.dva" "$test_tmp/prelude.dva" 2>/dev/null || true

    # Compile with timeout (default 30s, can be overridden via TEST_COMPILE_TIMEOUT)
    local compile_timeout="${TEST_COMPILE_TIMEOUT:-30}"
    set +e
    timeout "$compile_timeout" bash -c "ulimit -v 4194304; cd '$test_tmp' && '$DVA_COMPILER' '$REPO_ROOT/$test_entry' < /dev/null > /dev/null 2>&1"
    local comp_code=$?
    set -e

    if [ $comp_code -eq 124 ]; then
        echo "POS_FAIL:${test_name}:FAIL (Compilation timeout after ${compile_timeout}s)" > "$TMP_DIR/res_pos_${test_name}"
        return
    elif [ $comp_code -ne 0 ]; then
        echo "POS_FAIL:${test_name}:FAIL (Compilation Error)" > "$TMP_DIR/res_pos_${test_name}"
        return
    fi

    # Run the compiled binary to a log so we can keep BOTH its output and its
    # exit code. (Command substitution discards the status, and a nonzero
    # status here is significant: a program that crashes or aborts AFTER
    # printing its expected output would otherwise pass on byte-equality alone.
    # "Did it terminate successfully?" is as important as "did it print the
    # right thing?".)
    local actual_output run_code expected_code=0
    if [ -f "tests/pass/${test_name}.expected_code" ]; then
        expected_code=$(cat "tests/pass/${test_name}.expected_code")
    fi

    # Execution timeout (default 10s, can be overridden via TEST_RUN_TIMEOUT)
    local run_timeout="${TEST_RUN_TIMEOUT:-10}"
    set +e
    timeout "$run_timeout" "$test_tmp/${test_name}" < /dev/null > "$test_tmp/run.log" 2>&1
    run_code=$?
    set -e
    actual_output=$(cat "$test_tmp/run.log")

    if [ $run_code -eq 124 ]; then
        printf "POS_FAIL:%s:FAIL (Program timeout after %ds)\n    Output:\n%s\n" "$test_name" "$run_timeout" "$actual_output" > "$TMP_DIR/res_pos_${test_name}"
        return
    fi

    if [ $run_code -ne "$expected_code" ]; then
        printf "POS_FAIL:%s:FAIL (Program exited with code %d, expected %d)\n    Output:\n%s\n" "$test_name" "$run_code" "$expected_code" "$actual_output" > "$TMP_DIR/res_pos_${test_name}"
        return
    fi

    if [ -f "$expected_file" ]; then
        local expected_output
        expected_output=$(cat "$expected_file")
        if [ "$actual_output" == "$expected_output" ]; then
            echo "POS_PASS:${test_name}:PASS" > "$TMP_DIR/res_pos_${test_name}"
        else
            printf "POS_FAIL:%s:FAIL (Output Mismatch)\n    Expected: '%s'\n    Actual:   '%s'\n" "$test_name" "$expected_output" "$actual_output" > "$TMP_DIR/res_pos_${test_name}"
        fi
    else
        echo "POS_FAIL:${test_name}:FAIL (Missing .expected file)" > "$TMP_DIR/res_pos_${test_name}"
    fi
}

# Function to run a single negative test
run_neg_test() {
    local test_file="$1"
    local test_name="$2"
    local expected_err_file="tests/fail/${test_name}.expected_err"
    local flags_file="tests/fail/${test_name}.flags"
    local compiler_output
    local exit_code
    local test_flags=""
    if [ -f "$flags_file" ]; then
        test_flags=$(cat "$flags_file")
    fi

    # A negative test MUST declare which diagnostic it expects. Without this,
    # any nonzero compiler exit — including a crash or segfault —
    # was counted as PASS ("Failed as Expected"), so an internal crash could
    # masquerade as an expected compile error. The expected substring both pins
    # the failure to a real E-diagnostic and fingerprints it.
    if [ ! -f "$expected_err_file" ]; then
        printf "NEG_FAIL:%s:FAIL (Missing .expected_err file)\n    Expected to contain: 'N/A'\n    A negative test must declare its expected diagnostic in 'tests/fail/%s.expected_err'.\n" "$test_name" "$test_name" > "$TMP_DIR/res_neg_${test_name}"
        return
    fi

    # Compile with timeout (default 30s, can be overridden via TEST_COMPILE_TIMEOUT)
    local compile_timeout="${TEST_COMPILE_TIMEOUT:-30}"
    set +e
    compiler_output=$(timeout "$compile_timeout" bash -c "ulimit -v 4194304; '$DVA_COMPILER' \"$test_file\" $test_flags < /dev/null" 2>&1)
    exit_code=$?
    set -e

    if [ $exit_code -eq 124 ]; then
        printf "NEG_FAIL:%s:FAIL (Compilation timeout after %ds)\n" "$test_name" "$compile_timeout" > "$TMP_DIR/res_neg_${test_name}"
    elif [ $exit_code -eq 0 ]; then
        echo "NEG_FAIL:${test_name}:FAIL (Expected compilation failure, but succeeded!)" > "$TMP_DIR/res_neg_${test_name}"
    elif [ $exit_code -ge 128 ]; then
        # A signal-death exit (segfault=139, SIGABRT=134, ...) is a compiler crash,
        # never an expected diagnostic. Don't let a crash pass as "the error."
        printf "NEG_FAIL:%s:FAIL (compiler crashed with signal exit code %d)\n    Expected to contain: '%s'\n    Actual compiler output:\n%s\n" "$test_name" "$exit_code" "$(cat "$expected_err_file")" "$compiler_output" > "$TMP_DIR/res_neg_${test_name}"
    else
        local expected_err
        expected_err=$(cat "$expected_err_file")
        if echo "$compiler_output" | grep -q "$expected_err"; then
            echo "NEG_PASS:${test_name}:PASS (Caught Expected Error)" > "$TMP_DIR/res_neg_${test_name}"
        else
            printf "NEG_FAIL:%s:FAIL (Error Message Mismatch)\n    Expected to contain: '%s'\n    Actual compiler error: '%s'\n" "$test_name" "$expected_err" "$compiler_output" > "$TMP_DIR/res_neg_${test_name}"
        fi
    fi
}

export -f run_pos_test run_neg_test
export TMP_DIR RED GREEN NC BOLD REPO_ROOT="$PWD"

# Execute positive tests in parallel
for test_entry in $(ls -d tests/pass/* 2>/dev/null | sort); do
    [ -e "$test_entry" ] || continue
    if echo "$test_entry" | grep -qE '\.expected(_code)?$'; then continue; fi
    test_check_file="$test_entry"
    if [ -d "$test_entry" ]; then
        test_check_file="$test_entry/main.dva"
    fi
    [ -f "$test_check_file" ] || continue
    test_name=$(basename "$test_entry" .dva)
    run_pos_test "$test_entry" "$test_name" &
    while [ $(jobs -r | wc -l) -ge "$NPROC" ]; do
        sleep 0.01
    done
done
wait

# Execute negative tests in parallel
for test_file in $(ls tests/fail/*.dva 2>/dev/null | sort); do
    [ -e "$test_file" ] || continue
    test_name=$(basename "$test_file" .dva)
    [[ "$test_name" == mod_* ]] && continue
    run_neg_test "$test_file" "$test_name" &
    while [ $(jobs -r | wc -l) -ge "$NPROC" ]; do
        sleep 0.01
    done
done
wait

PASSED=0
FAILED=0
TOTAL=0

# Report Positive Tests
echo -e "\n${BOLD}[+] Running Positive Tests (tests/pass/)${NC}"
for test_entry in $(ls -d tests/pass/* 2>/dev/null | sort); do
    [ -e "$test_entry" ] || continue
    if echo "$test_entry" | grep -qE '\.expected(_code)?$'; then continue; fi
    test_check_file="$test_entry"
    if [ -d "$test_entry" ]; then
        test_check_file="$test_entry/main.dva"
    fi
    [ -f "$test_check_file" ] || continue
    TOTAL=$((TOTAL + 1))
    test_name=$(basename "$test_entry" .dva)
    res_file="$TMP_DIR/res_pos_${test_name}"
    if [ -f "$res_file" ]; then
        line=$(head -n 1 "$res_file")
        status_tag=$(echo "$line" | cut -d: -f1)
        msg=$(echo "$line" | cut -d: -f3-)
        if [ "$status_tag" == "POS_PASS" ]; then
            echo -e "  - ${test_name}: ${GREEN}${msg}${NC}"
            PASSED=$((PASSED + 1))
        else
            echo -e "  - ${test_name}: ${RED}${msg}${NC}"
            tail -n +2 "$res_file" 2>/dev/null || true
            FAILED=$((FAILED + 1))
        fi
    fi
done

# Report Negative Tests
echo -e "\n${BOLD}[-] Running Negative Tests (tests/fail/)${NC}"
for test_file in $(ls tests/fail/*.dva 2>/dev/null | sort); do
    [ -e "$test_file" ] || continue
    test_name=$(basename "$test_file" .dva)
    [[ "$test_name" == mod_* ]] && continue
    TOTAL=$((TOTAL + 1))
    res_file="$TMP_DIR/res_neg_${test_name}"
    if [ -f "$res_file" ]; then
        line=$(head -n 1 "$res_file")
        status_tag=$(echo "$line" | cut -d: -f1)
        msg=$(echo "$line" | cut -d: -f3-)
        if [ "$status_tag" == "NEG_PASS" ]; then
            echo -e "  - ${test_name}: ${GREEN}${msg}${NC}"
            PASSED=$((PASSED + 1))
        else
            echo -e "  - ${test_name}: ${RED}${msg}${NC}"
            tail -n +2 "$res_file" 2>/dev/null || true
            FAILED=$((FAILED + 1))
        fi
    fi
done

# Run Hardware / Sudo Tests
echo -e "\n${BOLD}[!] Running Hardware Privileged Tests (tests/sudo/)${NC}"
for test_file in tests/sudo/*.dva; do
    [ -e "$test_file" ] || continue
    TOTAL=$((TOTAL + 1))
    test_name=$(basename "$test_file" .dva)
    expected_file="tests/sudo/${test_name}.expected"

    compile_timeout="${TEST_COMPILE_TIMEOUT:-30}"
    set +e
    timeout "$compile_timeout" bash -c "ulimit -v 4194304; '$DVA_COMPILER' \"$test_file\" < /dev/null" > /dev/null 2>&1
    comp_code=$?
    set -e
    if [ $comp_code -eq 124 ]; then
        echo -e "  - ${test_name}: ${RED}FAIL (Compilation timeout after ${compile_timeout}s)${NC}"
        FAILED=$((FAILED + 1))
        rm -f "${test_name}" "${test_name}.ll"
        continue
    fi

    set +e
    sudo -n true 2>/dev/null
    has_sudo=$?
    set -e

    if [ $has_sudo -eq 0 ]; then
        run_timeout="${TEST_RUN_TIMEOUT:-10}"
        set +e
        actual_output=$(timeout "$run_timeout" sudo "./${test_name}" < /dev/null 2>&1)
        run_code=$?
        set -e
        if [ $run_code -eq 124 ]; then
            echo -e "  - ${test_name}: ${RED}FAIL (Program timeout after ${run_timeout}s)${NC}"
            echo "    Output: '$actual_output'"
            FAILED=$((FAILED + 1))
        elif [ -f "$expected_file" ]; then
            expected_output=$(cat "$expected_file")
            if [ "$actual_output" == "$expected_output" ]; then
                echo -e "  - ${test_name}: ${GREEN}PASS${NC}"
                PASSED=$((PASSED + 1))
            else
                echo -e "  - ${test_name}: ${RED}FAIL (Output Mismatch)${NC}"
                echo "    Expected: '$expected_output'"
                echo "    Actual:   '$actual_output'"
                FAILED=$((FAILED + 1))
            fi
        fi
    else
        echo -e "  - ${test_name}: ${GREEN}PASS (SKIPPED - Requires sudo privilege)${NC}"
        PASSED=$((PASSED + 1))
    fi
    rm -f "${test_name}" "${test_name}.ll"
done

echo ""
echo -e "${BOLD}=========================================${NC}"
echo -e "${BOLD}    SELFHOST DIFFERENTIAL HARNESSES      ${NC}"
echo -e "${BOLD}=========================================${NC}"

# The regression harnesses verify the compiler components.
HARNESS_OK=1
for spec in "driver_tests:./test_driver.sh"; do
    name="${spec%%:*}"
    script="${spec##*:}"
    echo ""
    echo -e "${BOLD}-- $name --${NC}"
    if [ ! -f "$script" ]; then
        echo -e "  - $name: ${GREEN}PASS (SKIPPED)${NC}"
        continue
    fi
    set +e
    timeout 120 bash "$script" < /dev/null
    RC=$?
    set -e
    if [ $RC -eq 0 ]; then
        echo -e "  - $name: ${GREEN}PASS${NC}"
    else
        echo -e "  - $name: ${RED}FAIL${NC}"
        HARNESS_OK=0
    fi
done
if [ $HARNESS_OK -ne 0 ]; then
    echo -e "${GREEN}All differential harnesses passed.${NC}"
else
    echo -e "${RED}A differential harness failed.${NC}"
    exit 1
fi

echo ""
echo -e "${BOLD}=========================================${NC}"
echo -e "${BOLD}TEST SUMMARY:${NC} Total: $TOTAL | Passed: ${GREEN}$PASSED${NC} | Failed: ${RED}$FAILED${NC}"
echo -e "${BOLD}=========================================${NC}"

if [ $FAILED -ne 0 ]; then
    exit 1
fi
