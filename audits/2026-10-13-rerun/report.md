# Edva audit after pull — 2026-10-13

The rebuilt compiler incorporates substantial fixes from the previous audit. The regression harness reports **548 tests: 546 passed, two skipped, zero failed**. Targeted testing nevertheless identifies remaining HTTP parsing errors, silent console-output truncation, inconsistent reader status, JSON conversion gaps, and documentation discrepancies.

This report contains **10 finding groups**. Seven describe runtime behavior reproduced with fresh probes; three cover documentation, validation, and LLM-reference omissions. The compiler arithmetic failures from the previous audit did not recur in the tested cases.

## Revision, method, and evidence

- Pulled `origin/master` with `git pull --ff-only`, advancing from `fd2c9d658b938f1c48211f95c3a9847dc5e37767` to **`b8e22672040b588151848e4483d3ebda97fdeb08`**.
- Regenerated version metadata and rebuilt with `make -j2 edva`. The tested binary is **`edva 1.1.1+b8e2267`**, SHA-256 `5eb4c9ff055812dc719d41ce128c8fc829af7c7c27a4b3ab7308de61618b19b2`. [Build metadata](build.json), [build output](build.stdout), [final hash](build-after.json).
- Ran `run_tests.sh` with `TEST_JOBS=2` and `SKIP_SUDO=1`. The two skipped Scroll Lock hardware cases compiled successfully. The harness reached its successful final summary; the surrounding Nushell exit-code capture failed afterward, so this report does **not** claim a captured process exit code. [Regression log](regression.log), [capture note](regression-summary.json).
- Re-ran **31 previous probes**, then added **11 probes**, including controls and a current documentation sample. [All 42 results](final-results.json), [new results](new-results.json). Expected diagnostic failures and obsolete documentation samples are retained as evidence, not counted as new defects.
- Documentation validation scanned **61 Quarto pages and 184 evidence anchors**, reporting **3 complete, 131 run, 77 partial, 1 negative, and 0 unclassified** examples. Quarto itself is unavailable locally; rendered HTML and navigation were not checked.
- Tests ran on the current Linux host, with a 45-second compilation timeout, five-second runtime timeout, and 4 GiB address-space cap for individual probes. This is targeted review, not exhaustive verification of every target, optimization level, module, or concurrency path. io_uring kernel behavior was not re-audited in this pass.
- Implementation files were not edited, apart from generated `src/version.dva`. That file was already locally modified before the pull; its previous contents are preserved in [before-build.json](before-build.json). At the user's subsequent request, the ten finding groups were published to Gitea; see the [issue index](issues.md) and [publication record](gitea-publication.json). The report and supporting evidence are committed separately from implementation fixes.

## Findings

### 1. High — HTTP query lookup compares key length but not key content

At [std/net/http.dva](../../std/net/http.dva), lines 292–310, `query_param` looks for `=` at the requested key's length but never compares the preceding bytes with `key`.

[Reproduction](reproductions/http_query_key/probe.dva):

| Call | Expected | Actual |
|---|---|---|
| `query_param("x=1&y=2", "y")` | `"2"` | `"1"` |
| `query_param("role=user&name=admin", "name")` | `"admin"` | `"user"` |
| `query_param("x=1", "z")` | absent | present |
| `query_param("x=", "x")` | present empty value | absent |

This can select an unrelated application parameter. Compare the full key before accepting a segment, and track whether a match occurred separately from the output length. Define duplicate-key and decoding behavior explicitly.

### 2. High — Content-Length extraction misreads valid headers and accepts unrelated or invalid ones

At [std/net/http.dva](../../std/net/http.dva), lines 376–384, `content_length` performs a case-sensitive substring search and skips a fixed 16 bytes. It neither parses a complete field name nor validates the entire numeric value.

[Reproduction](reproductions/http_content_length/probe.dva):

| Header | Actual |
|---|---|
| `Content-Length: 12` | 12, control |
| `Content-Length:12` | **2**, first digit skipped |
| `content-length: 12` | absent |
| `X-Content-Length: 12` | incorrectly present |
| `Content-Length: invalid` | present value **0** |

HTTP field names are case-insensitive and whitespace after the colon is optional. [RFC 9112 §5](https://www.rfc-editor.org/rfc/rfc9112.html#section-5). Incorrect length selection affects where the parser believes a request ends; interoperability and connection synchronization are at risk. No end-to-end request-smuggling exploit was attempted.

Parse complete header lines, normalize field-name comparison, trim permitted whitespace, and validate nonnegative decimal length with overflow and duplicate-field checks. Return a distinct invalid-header result rather than treating malformed input as zero or absent.

### 3. High — HTTP request reading reports success for incomplete or unsupported body framing

At [std/net/http.dva](../../std/net/http.dva), lines 387–440, `read_body` breaks on `recv <= 0` and returns any bytes accumulated. `read_req_body` converts absence into an empty string, and `request_method` returns success unconditionally after reading headers/body.

- [Truncated-body probe](reproductions/http_truncated_body/probe.dva): send a request declaring ten body bytes, supply `abc`, then shut down the sender. `read_request` returns a successful request with a **three-byte** body.
- [Chunked-body probe](reproductions/http_chunked_body/probe.dva): send a valid chunked body containing `abc`. `read_request` succeeds with a **zero-byte** body; the chunk framing remains unread.

A body shorter than its declared Content-Length is incomplete. Chunked framing requires its own decoding and completion checks. [RFC 9112 §§6.3, 7.1, 8](https://www.rfc-editor.org/rfc/rfc9112.html#section-6.3).

Carry completion/error status through all helper layers. Either implement chunked requests or explicitly reject them and close the connection. Also define and enforce separate request-line, aggregate-header, and body limits: current `max` is passed into line reads, while Content-Length directly determines body allocation. The allocation-limit concern is source review, not an exhaustion experiment.

### 4. High — Console writers still silently discard partial writes

The raw `io::write` repair works in the tested nonblocking case: it returns the bytes transferred. [Control](reproductions/io_write_count/probe.dva) reports **65,536 written and 65,536 received**, allowing callers to detect the short transfer.

However, `log`, `outs`, and `errs` still issue one `libc::writev` and discard its result at [std/io.dva](../../std/io.dva):155, 271, and 282. `out` and `err` use that path; the formatted writer calls the improved raw helper but discards its return value too.

[Console-output probe](reproductions/io_out_partial/probe.dva): redirect stdout to a nonblocking pipe and call `io::out` with 100,000 characters. The call returns normally, but only **65,536 of the expected 100,001 bytes**, including newline, arrive. Pipe capacity varies by host; silent loss is the defect.

Define a common completion/backpressure contract for every writer. Handle EINTR, advance across partial vectors, and expose incomplete progress or a recoverable failure. Retrying EAGAIN in a tight loop is not sufficient. The documentation currently says EINTR is retried by `io` operations generally, which overstates these wrappers' behavior.

### 5. Medium — `read_all` retains EAGAIN after clean EOF; `in` hides reader status entirely

[Status-transition probe](reproductions/io_readall_stale_status/probe.dva):

1. Read an empty nonblocking pipe while its writer is open: absence, errno 11.
2. Close the writer and call `read_all` again: absence, **EOF true, would-block true, errno still 11**.

The EOF branch at [std/io.dva](../../std/io.dva):339–342 sets `r.eof` without clearing `r.err`. The separate `refill` implementation clears the error on EOF. `reader_would_block` promises to describe the last read, so the stale flag contradicts its contract and can misdirect readiness handling.

Use consistent state transitions across read paths and test EAGAIN → data, EAGAIN → EOF, and fatal error → recovery. Prefer one shared state-update helper.

An associated API omission remains in [std/in.dva](../../std/in.dva): its reader is private and its public wrappers expose no error/EOF/would-block inspection. [The reference](../../doc/reference/stdlib/in.qmd):13 still describes absence solely as EOF. Expose corresponding status accessors, or document this limitation and direct applications needing error distinction to `io::Reader`.

### 6. Medium — JSON loses representable numbers through intermediate overflow or underflow

The old `1e-309` failure is repaired. More extreme but representable final values still fail:

| JSON number constructed by the probe | Mathematical value | Parsed Float |
|---|---:|---:|
| `1` followed by 309 zeros, then `e-309` | 1 | infinity |
| `0.` followed by 399 zeros, then `1e400` | 1 | 0 |

[Reproduction](reproductions/json_compensated_number/probe.dva) also prints false for both comparisons with `1.0`.

[std/json.dva](../../std/json.dva):174–186 accumulates the unscaled significand in a Float; lines 329–389 apply the exponent afterward. Once the significand becomes infinity or zero, later exponent adjustment cannot recover it. Clamping the exponent independently of the decimal position also prevents general correct conversion.

Use a decimal-to-binary conversion that combines significant digits and exponent before overflowing intermediate state. Alternatively, reject explicitly unsupported number forms with a documented error. Returning a successful, unrelated value is not a usable range-limit policy. Add tests for long mantissas whose final values are ordinary finite numbers.

### 7. Medium — JSON accepts invalid raw UTF-8 in strings

[Reproduction](reproductions/json_invalid_utf8/probe.dva) constructs a quoted string containing byte `0xFF`. `json::parse` reports success.

The raw-character path in [std/json.dva](../../std/json.dva):89–99 checks control characters, then copies bytes without validating UTF-8 sequences. The repaired `\u` escape path does not cover this route. Interoperable exchanged JSON uses UTF-8. [RFC 8259 §8.1](https://www.rfc-editor.org/rfc/rfc8259.html#section-8.1).

Validate raw string sequences, including continuation bytes, overlong encodings, surrogate code points, and maximum scalar value. If parsing intentionally assumes previously validated bytes, make that precondition explicit and provide a checked entry point; the current reference advertises strict JSON without that qualification.

### 8. Medium — Current Quarto references retain API, example, and performance discrepancies

| Current reference | Discrepancy |
|---|---|
| [net.qmd](../../doc/reference/stdlib/net.qmd):45 | `net::close_fd` is documented as `Int => ()`; [implementation](../../std/net.dva):285 returns `Int`. |
| [net.qmd](../../doc/reference/stdlib/net.qmd):72 | `http::respond` argument three is called `headers`; [implementation](../../std/net/http.dva):66–72 accepts a **content type** and generates its own headers. The different `response` function correctly accepts preformatted headers. |
| [sort.qmd](../../doc/reference/stdlib/sort.qmd):11,33 | Still describes all helpers as quadratic insertion sort. Typed `ints`/`strings` now use hybrid merge sort; only `raw_sort_slots` retains the generic insertion path. |
| [sort.qmd](../../doc/reference/stdlib/sort.qmd):22–31 | Current example calls undefined `print_int`. [Exact copied sample](reproductions/doc_sort_current/probe.dva) fails with **E3004**, followed by inference/compilation diagnostics. |
| [in.qmd](../../doc/reference/stdlib/in.qmd):13,26 | Treats absence as EOF and retains undefined legacy `print` calls. The status omission is covered in finding 5; this sample was reviewed statically. |
| [math.qmd](../../doc/reference/stdlib/math.qmd):76–77 | Names `math/geom` and `math/complex` without documenting their public signatures and contracts. |

The previous `io`, JSON, and `http::response` sample defects were substantially corrected; this list concerns current text. Update signature tables against source declarations and make self-contained examples executable.

### 9. Medium — Documentation validation improved, but exemptions and missing assertions still hide defects

The earlier silent omission of unclassified code blocks is fixed. The checker now requires classification, compiles complete examples, executes run examples, checks negative diagnostics, and fails when requested compilation lacks a compiler. The documentation CI job now requests compilation.

Remaining gaps in [tools/check_docs.nu](../../tools/check_docs.nu):

- **77 blocks are classified as partial** and therefore excluded from compilation. Some are legitimate fragments; the complete-looking sort usage sample in finding 8 demonstrates that the exemption also hides broken examples. This is not a claim that all 77 should run unmodified.
- Run checks at lines 186–195 inspect exit status but do not assert output. Wrong successful results can pass; signatures containing interchangeable String parameters are particularly easy to misuse.
- Example discovery at line 83 covers `.qmd` files only. Dva examples in `doc/llms.txt` and `doc/llms-full.txt` are outside that compilation check; synchronized operator tables do not validate these examples.

Require a short reason or supporting context for partial examples, promote complete usage examples to run/complete, support expected-output assertions, and validate suitable LLM snippets with the same machinery. This preserves legitimate fragment documentation while making exclusions reviewable.

### 10. Medium — LLM instructions still promise a complete reference but provide only a library overview

[doc/llms.txt](../../doc/llms.txt):5 and its full-reference link describe a complete standard-library reference; [doc/llms-full.txt](../../doc/llms-full.txt):3 similarly promises completeness. Its library section at line 291 contains only six overview bullets, with no API reference for modules such as `sort`, `uring`, `color`, `fp`, or `type`.

The old false JSON streaming/serialization claim and the incomplete E3130 category description were corrected. The scope claim and API coverage remain unresolved. Neither the JSON reference nor these instructions now explains the parser's module-global `src`/`pos` state and associated reentrancy/threading assumptions; this is a missing contract, not a reproduced concurrent failure.

Either generate a comprehensive reference from the source inventory and maintained documentation, or accurately label the files as a curated language guide and provide module links. Keep error handling, partial progress, memory lifetime, and concurrency restrictions in the machine-readable material as well as the human-facing reference.

## Verification of the previous audit

These are reproduction outcomes and source-review conclusions, not changes to Gitea issue state.

| Previous issue | Current evidence |
|---|---|
| #149 — array division | Signed/unsigned zero and signed minimum/-1 probes now report deliberate E4012/E4013 diagnostics instead of silent substitution or SIGFPE. |
| #150 — nested JSON | Array/object probes now preserve direct-child counts and keys. |
| #151 — JSON grammar | The five former malformed-input cases are rejected. |
| #152 — Unicode escapes | Invalid hex is rejected; supplementary escape pair emits the correct four UTF-8 bytes. Raw UTF-8 validation remains finding 7. |
| #153 — subnormal JSON | `1e-309` is nonzero. Other compensated-number cases fail as finding 6. |
| #154 — finite number formatting | Tested integer limits and finite floats produce correct numeric text. |
| #155 — nonfinite formatting | Infinity and NaN produce text and terminate normally. |
| #156 — format placeholders | Tested placeholders and trailing opening brace behave correctly. |
| #157 — incomplete writes | Raw write now reports partial progress; console wrappers remain finding 4. |
| #158 — read status | New inspection APIs exist; EOF transition and `in` coverage remain finding 5. |
| #159 — socket failure handling | Connect-failure probe leaks zero descriptors; socket-exhaustion resolver walk terminates. |
| #160 — address formatting | Tested address prints `192.168.1.1:50000`. |
| #161 — target layout | Thumb semantic-layout probe reports 32-bit sizes. Other target ABIs were not exhaustively executed. |
| #162 — library references | Significant corrections landed; current residual discrepancies are finding 8. |
| #163 — JSON recoverable errors | Current reference explains named-branch inspection; probe prints the error and continues. |
| #164 — documentation checks | Main enforcement gaps fixed; residual limitations are finding 9. |
| #165 — LLM consistency | Several false claims corrected; completeness and coverage remain finding 10. |
| #166 — sorting complexity | Typed merge sort is implemented and measured substantially faster below. |

The old copied JSON/io documentation samples still fail to compile, but they no longer match the corrected current pages and are **not** reported as current defects. Likewise, the old raw-write probe ignores the newly returned byte count; the fresh control is necessary to distinguish that repaired API from console wrappers.

## Performance measurements

Descending Int input, three trials per size, default compilation. Wall time includes process startup, array construction, copying, and output. All trials exited successfully with correct endpoints. These are indicative host measurements, not controlled CPU microbenchmarks or compiler-wide speedup measurements.

| Elements | Previous audit median, ms | Current median, ms |
|---:|---:|---:|
| 1,000 | 29.74 | 2.93 |
| 2,000 | 105.86 | 4.14 |
| 4,000 | 413.84 | 4.80 |
| 8,000 | 1,647.75 | 6.36 |
| 16,000 | 3,122.63 | 7.01 |
| 128,000 | not measured | 41.90 |

[Current raw trials](sort-benchmark.json), [benchmark source](reproductions/sort_scale/probe.dva). The previous values are those recorded in the report at pre-pull commit `fd2c9d6`; upstream modified some older audit result files, so this rerun stores its evidence separately. A [correctness control](reproductions/sort_correctness/probe.dva) checks all adjacent pairs in 16,000 duplicate-bearing Int values, verifies length/input preservation, and checks the string helper's endpoints and original input.

## Suggested order and reproduction

1. Repair HTTP key selection and framing/completion together, with exact body and remaining-stream assertions.
2. Complete the writer contract across all wrappers; unify reader status transitions and expose stdin status.
3. Correct JSON decimal conversion and define UTF-8 validation at the parser boundary.
4. Repair current references, narrow the LLM completeness claim or fill its gaps, and add output assertions to documentation checks.

Run `nu audits/2026-10-13-rerun/run_probes.nu` from the project root to compile and execute all retained sources. Use `--filter 'http_|io_|json_'` to narrow the set. Per-case compiler/runtime logs are under `results/<case>/`; compilation diagnostics can appear on stdout. `final-results.json` preserves the consolidated audit snapshot; the runner writes batch results to `probe-results.json` or `supplemental-results.json`.

Run `nu audits/2026-10-13-rerun/measure.nu` after compiling `sort_scale` to repeat the performance measurements. No implementation fix is included in this audit.
