**Edva audit — 2026-10-13**

The existing compiler, `edva 1.1.1+da353f3`, passes the regression suite but still produces incorrect results for ordinary JSON, formatted output, and array arithmetic. Socket resource failures and formatting infinity can hang programs. Documentation validation currently misses most examples and substantial API drift.

This report contains **18 finding groups** covering compiler correctness, library bugs, API omissions, performance, Quarto sources, and LLM instructions. Findings describe this local source tree and the existing binary, not an independently verified clean commit. The binary was not rebuilt; its SHA-256 remained `9332c491e509338e91cad6cedc512b1a3619efae0d1389d511e30aba4057dccd` throughout. See [build metadata](build.json) and [final hash check](build-after.json). No Git operations or implementation changes were made.

**Validation and scope**

- Existing regression harness: **543 total; 541 passed, 2 skipped, 0 failed**, exit 0. The two skipped cases toggle keyboard Scroll Lock and were compiled successfully. [Full log](regression.log).
- Ran the existing harness with its build step disabled, using the supplied binary, `TEST_JOBS=2`, and `SKIP_SUDO=1`. The copied script still prints its original “Building” banner; that step is a no-op. [Exact script](run_existing_compiler.sh).
- Ran **31 new targeted probes**: 27 compiled; four were rejected, including the two copied documentation examples. Negative CTFE experiments are retained but do not establish new language bugs. [Consolidated results](final-results.json).
- Re-ran **27 previous audit probes**. Their outcomes are separated from new findings below. [Previous results](previous-results.json).
- Documentation inventory: 61 Quarto pages, 184 resolving evidence references, 214 Dva code blocks. Only two blocks are currently eligible for compilation by the validator. Quarto is unavailable locally, so HTML rendering, navigation, and visual layout were not checked.
- Runtime probes were executed on the current Linux host. This is targeted source review and executable testing, not exhaustive validation of the compiler, all optimization modes, every standard module, concurrency, or all target ABIs. The thumb finding tests the semantic layout helper on the host; no embedded hardware execution is claimed. This audit does not re-certify the earlier io_uring work.

**1. High — Array division bypasses scalar safety semantics. Reproduced.**

In [src/codegen/expr.dva](../../src/codegen/expr.dva), `codegen_array_vec_apply` (line 1355) and `codegen_array_scalar_apply` (line 1410) replace signed zero divisors with 1. Unsigned division gets no zero guard, and signed division gets no minimum-integer overflow guard. The ordinary scalar path emits E4012/E4013 instead.

| Probe | Observed result |
|---|---|
| [Signed array division](reproductions/array_div_zero/probe.dva): `(10,20)/(0,2)` | `(10,10)`; division by zero silently becomes division by one |
| [Larger array](reproductions/array_big_div_zero/probe.dva): forty tens / forty zeros | first element is 10 |
| [Unsigned array](reproductions/array_unsigned_div_zero/probe.dva) | SIGFPE, recorded as exit -8 |
| [Signed minimum / -1](reproductions/array_div_overflow/probe.dva) | SIGFPE, exit -8 |
| [Scalar control](reproductions/scalar_div_control/probe.dva): `10/0` | deliberate E4012 abort |

The unsigned zero and signed overflow cases also violate LLVM division preconditions; optimizer behavior need not remain a hardware trap. [LLVM language reference](https://llvm.org/docs/LangRef.html#sdiv-instruction). Apply the same per-element semantics before both vector and counted-loop operations, including remainder. Add a matrix of widths, signedness, array sizes, and optimization levels.

**2. High — Nested JSON arrays and objects acquire other containers’ elements. Reproduced.**

[Nested array probe](reproductions/json_nested/probe.dva): parsing `[1,[2],3]` produces a root of length **4**, containing `1`, `2`, a nested array of length **2**, and `3`. The expected root has three elements and its nested array contains only `2`.

[Nested object probe](reproductions/json_object/probe.dva): `{"outer":{"inner":1},"last":2}` produces root keys `inner`, `outer`, `last`, instead of just `outer`, `last`.

[std/json.dva](../../std/json.dva), lines 187–217, builds every container as a slice from index zero of module-wide `vals` or `pairs`. Merely adding a start offset is insufficient: child elements are interleaved with parent elements. Use a separate collection per container, or explicitly gather each container’s direct children into contiguous storage after recursive parsing. Test sibling containers, empty nested containers, and mixed object/array nesting.

**3. Medium — JSON parsing accepts missing separators, trailing commas, leading zeros, and trailing garbage. Reproduced.**

[This probe](reproductions/json_invalid/probe.dva) reports success for all five inputs: `true garbage`, `[1 2]`, `[1,]`, `01`, and `{"a":1 "b":2}`. These do not satisfy the JSON document grammar. [RFC 8259](https://www.rfc-editor.org/rfc/rfc8259).

`skip_comma` at [std/json.dva](../../std/json.dva):164 makes commas optional; container entry accepts a closing delimiter immediately after a consumed comma. `parse_number` does not enforce the leading-zero rule. `parse` at line 359 returns after one value without checking that only whitespace remains. Implement explicit container separator states and a document-level end check. If permissive parsing is intentional, make it a separate, explicitly documented mode.

**4. Medium — JSON Unicode escapes accept nonhex digits and produce invalid UTF-8 for supplementary characters. Reproduced.**

[Unicode probe](reproductions/json_unicode/probe.dva): `"\u004G"` succeeds. `"\uD83D\uDE00"` yields six bytes `237,160,189,237,184,128`, rather than the four-byte encoding `240,159,152,128` of U+1F600. JSON encodes supplementary characters using paired UTF-16 escapes. [RFC 8259, strings](https://www.rfc-editor.org/rfc/rfc8259#section-7).

`hexval`/`is_hex_at` at [std/json.dva](../../std/json.dva):55–60 check no upper bound for each digit range. `parse_unicode` converts each surrogate separately; `append_utf8` supports at most three bytes. Validate digit ranges, combine valid surrogate pairs, and define malformed-surrogate handling. The reference acknowledges BMP-only coverage; the undocumented defect is accepting unsupported input and emitting invalid UTF-8 instead of rejecting it.

**5. Medium — JSON exponent scaling discards representable subnormal values. Reproduced.**

[Probe](reproductions/json_tiny_number/probe.dva): parsing `1e-309` yields exactly zero, even though this magnitude is representable as a nonzero Float. [std/json.dva](../../std/json.dva):327–337 constructs positive `10^309`, which overflows, then divides by infinity. The comment claiming all magnitudes below `1e-308` become zero is incorrect. Use conversion/scaling that preserves the subnormal range and test the smallest normal, subnormals, underflow, and overflow separately.

**6. High — Numeric formatting changes ordinary finite values. Reproduced.**

| Input | Output | Expected numeric spelling |
|---|---|---|
| `str::from_float(100000.0)` | `1` | `100000` or an equivalent scientific form |
| `str::from_float(120000.0)` | `12` | `120000` or equivalent |
| `str::from_float(123450.0)` | `12345` | `123450` or equivalent |
| `str::from_int(-9223372036854775808)` | `-` | `-9223372036854775808` |
| `io::out(u64(18446744073709551615))` | `-1` | `18446744073709551615` |

[Float reproduction](reproductions/float_format/probe.dva), [integer reproduction](reproductions/integer_format/probe.dva).

In [std/str.dva](../../std/str.dva):130, trailing-zero trimming also runs on integer-only output, removing significant digits. At line 50, negating minimum Int overflows and the digit loop emits nothing. [std/io.dva](../../std/io.dva):80 casts u64 to signed Int before formatting. Restrict trimming to the fractional portion, compute signed magnitudes without overflowing, and provide unsigned formatting. These defects affect logs and any downstream text serialization using these helpers.

**7. High — Formatting infinity never terminates; NaN aborts. Reproduced.**

[Infinity probe](reproductions/float_infinity/probe.dva), `str::from_float(1.0/0.0)`, exceeds the five-second timeout. [NaN probe](reproductions/float_nan/probe.dva), using `0.0/0.0`, aborts with E4007, “Builder append byte out of range”.

[std/str.dva](../../std/str.dva):68 normalizes by repeatedly dividing by ten; infinity remains infinity forever. NaN reaches conversion/digit construction without a classification check. Handle nonfinite values before normalization and define their spellings. Include negative infinity and signed zero tests. This is reachable merely by logging the result of floating-point arithmetic.

**8. Medium — Scalar placeholder formatting skips characters and a final opening brace aborts. Reproduced.**

[Placeholder probe](reproductions/io_format/probe.dva): `io::outf(7,"a{}b")` prints `a7`; `io::outf(7,"{}{}")` prints `7}`. The record control produces `a7b8c` correctly. [Final-brace probe](reproductions/io_format_brace/probe.dva), `io::outf(7,"end{")`, aborts with E4006.

`logf_scalar` at [std/io.dva](../../std/io.dva):110 advances by two for a placeholder and then advances again. Both scalar and record scanners inspect the next byte after `{` without checking whether it exists. Advance exactly once per consumed span; bound lookahead; specify handling of literal braces and excess/missing arguments.

**9. High — Stream writers silently lose bytes on partial writes. Reproduced.**

[Nonblocking pipe probe](reproductions/io_short_write/probe.dva): writing 100,000 bytes through `io::write` returns normally, but only **65,536 bytes** reach the reader on this host. The remaining **34,464 bytes** are lost. Pipe capacity is environment-dependent; the defect is ignoring a partial result.

`write` at [std/io.dva](../../std/io.dva):33 calls libc once and returns Unit. `log`, `out`, and `err` similarly discard `writev` results. Define a write-all operation that retries interrupted calls and tracks progress; for nonblocking descriptors, expose partial progress/would-block so callers can resume after readiness. A Unit-returning API must either guarantee completion or report failure through a defined mechanism. Also remove the unconditional “atomic writev” promise: one syscall alone is not a general message-atomicity contract.

**10. Medium — Reader API cannot distinguish EOF from a read error. Reproduced/API omission.**

[Probe](reproductions/io_read_error/probe.dva): both `read(reader(-1),16)` and `read_byte(reader(-1))` return the absent branch, the same result documented for EOF. `refill` at [std/io.dva](../../std/io.dva):170 retries EINTR but otherwise returns a negative result that the public methods collapse into absence.

This hides invalid descriptors and other I/O failures; nonblocking would-block also needs a distinct policy. Decide on a result model for data, EOF, and errors, with a documented nonblocking contract. Update [the reader reference](../../doc/reference/stdlib/io.qmd):48, which currently describes absence as EOF.

**11. High — TCP failure paths leak descriptors or spin forever. Reproduced, with one related static path.**

[Leak probe](reproductions/net_connect_leak/probe.dva): eight failed connections to `127.0.0.1:0` consume eight descriptors. `tcp_connect` at [std/net.dva](../../std/net.dva):104 returns its failure without closing the newly created socket. The bind/listen failure branch in `tcp_listen` at line 166 has the same missing close; this second path was reviewed statically.

[Exhaustion probe](reproductions/net_socket_failure/probe.dva): resolve a host, lower this child process’s descriptor limit to 32, fill the remaining slots, then call `walk_connect`. `setrlimit` succeeds, the probe prints `before walk`, and it times out. At line 144, socket failure executes `--^` before advancing `cur'`, retrying the same addrinfo entry indefinitely.

Close every successfully created socket on ownership failure. Advance the resolver cursor or return on socket-creation failure; release the addrinfo list on all exits. Test descriptor exhaustion and repeated connection/listen failures, not only successful networking.

**12. Medium — IPv4 addresses and ports are printed as signed bytes. Reproduced.**

[Probe](reproductions/net_address/probe.dva): a sockaddr for `192.168.1.1:50000` formats as **`-64.-88.1.1:-15536`**. `addr_str` at [std/net.dva](../../std/net.dva):256 loads octets and port bytes as i8. Use u8 loads and unsigned network-byte-order reconstruction. This also affects `peer_addr` and `local_addr`, which use that helper.

**13. Medium — Semantic and code-generation target layouts still disagree. Reproduced helper discrepancy.**

[Probe](reproductions/target_thumb/probe.dva) imports the current layout implementation. For `thumbv6m-none-eabi`, `is_32bit_target!` returns false and RawPtr size is **8**; the wasm32 control returns **4**.

[src/layout.dva](../../src/layout.dva):19 omits thumb, i486, and i586 from its 32-bit classifier. [src/codegen/types.dva](../../src/codegen/types.dva):1033 includes them. The semantic classifier feeds typed layout metadata through `annotate`; code generation uses a separate classifier. Pointer-containing semantic layouts therefore disagree with lowering for the documented thumb target. This audit demonstrates the helper disagreement, not a specific embedded runtime crash.

Share one target-layout definition, preferably based on the actual target data layout. Test target-sensitive metadata and lowering together; the existing `338_layout_size_reconciliation` test only exercises the host layout.

**14. Medium — Standard-library reference samples and signatures describe incompatible APIs. Reproduced/static.**

| Reference | Discrepancy |
|---|---|
| [io.qmd](../../doc/reference/stdlib/io.qmd):32–43 | Documents format-first/variadic calls. Implementation is `outf(value,format)` with a record for multiple values; `out` takes one argument. [Copied sample](reproductions/doc_io_example/probe.dva) fails with E3084. |
| [io.qmd](../../doc/reference/stdlib/io.qmd):71 | Reader example uses `0.. @ =>` and reversed `outf` arguments. |
| [json.qmd](../../doc/reference/stdlib/json.qmd):14 | [Copied sample](reproductions/doc_json_example/probe.dva) calls undefined `print_int` and `print`, producing E3004. Similar legacy calls remain in guides and str/sort references. |
| [net.qmd](../../doc/reference/stdlib/net.qmd):26–46 | Lists `net::socket`, `bind`, `listen`, `accept`, `connect`, `send`, and `close`; the actual API exports helpers such as `tcp_listen`, `tcp_accept`, `tcp_connect`, `send_str`, and `close_fd`. `set_nonblocking` takes two Int arguments and returns Int, not a one-argument result ram. |
| [net.qmd](../../doc/reference/stdlib/net.qmd):59–65 | Says `http::response` takes a content type and adds Content-Length. Actual argument two is preformatted headers; framing is the caller’s job. [Exact call](reproductions/doc_http_example/probe.dva) emits `text/plain` as a bare header line, no Content-Length, and no blank header/body separator. `http::respond` returns Int, not Unit. |
| [unicode.qmd](../../doc/reference/stdlib/unicode.qmd):57 | Uses format-first variadic `outf` and unsupported `{:X}` formatting. |

Generate API tables from declarations where practical. Compile complete samples and assert representative output; HTTP’s sample compiles but produces a malformed response, so compilation alone cannot catch it.

**15. Medium — JSON error documentation contradicts recoverable named-branch handling. Reproduced.**

[json.qmd](../../doc/reference/stdlib/json.qmd):41 states that unwrapping the Error slot aborts and that it is not recoverable. [std/net.dva](../../std/net.dva):11 repeats this contrast.

[Probe](reproductions/json_recover/probe.dva) parses `-`, handles the negative branch as `e => io::out(e.msg)`, prints `json: malformed number`, and continues to print `continued`. Document the actual distinction between named branch inspection and aborting extraction/propagation forms. Give both a recoverable example and a fatal `!!` example; this distinction determines whether applications can safely handle malformed input.

**16. Medium — Documentation checks silently ignore 211 of 214 Dva blocks. Measured.**

[Inventory](documentation-inventory.json): **211 unmarked, 1 complete, 1 partial, 1 expected-error**. [tools/check_docs.nu](../../tools/check_docs.nu):84 only compiles explicitly marked complete/run examples and selected expected-error examples. Unmarked blocks do not count as failures or even appear in its summary. Evidence checks verify path existence, not whether the referenced code supports a claim.

Additional validation gaps: `run` means compile to IR, not execute; a header-only expected-error marker without an error comment can skip compilation; requesting compilation when the binary is absent silently skips it. [.github/workflows/docs.yml](../../.github/workflows/docs.yml):44 invokes the checker without `--compile-examples`, so that documentation job compiles no examples.

Require every block to declare complete, partial, or expected-error status; reject unclassified blocks. Compile complete examples, execute those explicitly marked run, and make a requested but unavailable compiler an error. Validate return codes and expected diagnostics for negative cases. Keep fragment exemptions explicit and reviewable.

**17. Medium — LLM instructions overstate completeness and disagree with source/reference details. Static, with runtime evidence above.**

- [doc/llms-full.txt](../../doc/llms-full.txt):298 promises JSON tokenization, streaming parsing, and serialization. [std/json.dva](../../std/json.dva) exposes a stateful whole-string parser and no serializer/streaming API. The [stdlib index](../../doc/reference/stdlib/index.qmd):23 also promises serialization.
- [doc/llms.txt](../../doc/llms.txt):5 calls the full text a complete standard-library reference, but its library section consists of six summary bullets. Modules including uring, sort, color, fp, and type have no API reference there. Its index names only four “core” modules. Either label this as a curated guide with links or generate an actually comprehensive reference.
- [lexical.qmd](../../doc/reference/language/lexical.qmd):44 says unsuffixed integers require context/suffix and never default to Int. Both LLM files correctly describe the default Int/pragma policy. Plain unsuffixed bindings in these reproductions compile successfully; the lexical page is stale.
- [quickstart.qmd](../../doc/start/quickstart.qmd):122 requires all expression choices to be exhaustive without mentioning the synthesized empty branch for RamPN/RamNP choices. The choices guide and LLM instructions describe that exception. State it consistently.
- [llms-full.txt](../../doc/llms-full.txt):312 categorizes E3130–E3132 only as field-initialization diagnostics. E3130 is also used for compile-time evaluation failures in [src/codegen/match.dva](../../src/codegen/match.dva):555, as the retained CTFE probes demonstrate. Diagnostic identifiers do not uniquely identify the advertised category.
- The math reference names complex/geometry submodules but omits their public signatures and behavioral contracts. JSON’s stateful storage warning does not specify reentrancy, cross-parse ownership, or supported lifetime/threading assumptions. I/O’s error and backpressure contracts are incomplete as findings 9–10 demonstrate.

Use source-derived inventories and executable examples as inputs to both Quarto and LLM material. Keep explanatory prose, but stop treating synchronized operator tables and existing evidence paths as proof that all prose is synchronized.

**18. Performance limitation — Standard sorting scales quadratically. Measured; already documented.**

[std/sort.dva](../../std/sort.dva):16 performs insertion sort through comparator/swap closures, using recursive bubbling. The [reference](../../doc/reference/stdlib/sort.qmd) explicitly restricts its intended use to small collections; this is not an undisclosed complexity bug.

[Benchmark](reproductions/sort_scale/probe.dva), three runs per size, descending Int input, same default-built executable; wall time includes process startup and construction/copying. Each run completed and printed the expected endpoints. Results are indicative host measurements, not controlled CPU microbenchmarks.

| Elements | Median milliseconds |
|---:|---:|
| 1,000 | 29.74 |
| 2,000 | 105.86 |
| 4,000 | 413.84 |
| 8,000 | 1,647.75 |
| 16,000 | 3,122.63 |

The 2,000–8,000 range grows approximately fourfold per doubling; the largest point was noisier/faster than that extrapolation. [Raw trials](sort-benchmark.json). Retain insertion sort for small inputs and add a stable O(n log n) implementation for general use, preserving its copying/stability contract. Compiler passes that sort growing name lists should be benchmarked separately; no compiler-wide slowdown is established here.

**Previous audit: verified improvements and remaining boundaries**

The following earlier reproduction failures are fixed in this binary: map tombstone duplication, map lookup looping after deletion churn, nested arena restore invalidation, generation exhaustion after 65,536 iterations, narrow division/remainder verification errors, narrow/logical shifts, unsigned-to-float conversion, Float-to-i32 conversion, invalid Builder/cast arities, and Rune size. Map duplicate testing now ends with the expected missing-key error after confirming count 1 and absent membership; its nonzero exit is not a regression.

The previous NaN comparison and Builder-alias observations remain intentional documented behavior. Old documentation probes were not automatically promoted to current findings: this report checks current text. The semantic target-layout repair remains incomplete as finding 13 shows. These observations do not close or reopen Gitea issues; no remote issue state was changed.

**Suggested implementation order and acceptance criteria**

1. Fix silent corruption and undefined arithmetic first: array division/remainder parity, per-container JSON storage, finite-number formatting, and reliable writes. Add these reproductions to the permanent regression suite with output assertions.
2. Fix unbounded failure behavior: nonfinite formatting, socket exhaustion loops, and descriptor leaks. Use timeouts and descriptor-count assertions in regression tests.
3. Finish JSON validity/Unicode/numeric-range handling and define read/error/backpressure contracts. Consider an explicit parser context with owned per-container collections; clarify whether JSON is intentionally a subset and which limits apply.
4. Unify target layout classification and test metadata against emitted target layouts.
5. Correct the references and LLM claims, classify all code blocks, then enforce compilation/execution in CI. Prioritize examples users can paste and APIs used for networking.
6. Improve sorting when collection sizes justify it, with before/after scaling measurements. Keep correctness and resource-lifetime fixes independent of an io_uring backend migration: changing the backend does not itself define complete writes, errors, or buffer ownership.

**Reproduction files**

Run `nu audits/2026-10-13/run_probes.nu` from the project root to compile/run current probes with 45-second compile and five-second runtime limits and a 4 GiB address-space cap. `--filter 'case-name'` narrows the run; `--previous` reruns the prior audit probes. The socket exhaustion test changes only its own child process limit. Generated IR, binaries, compiler output, and runtime output are under `results/<case>/`; historical reruns are under `previous/<case>/`.

`nu audits/2026-10-13/measure.nu` repeats the sort measurements and documentation inventory. [final-results.json](final-results.json) is the consolidated audit snapshot, including corrected supplemental probes; earlier batch files retain intermediate experiments. Reports distinguish observed failures from recommended additional tests and unverified static paths.
