# Dva and edva documentation roadmap

**Status:** planning document. This file defines the documentation work; it
does not define language behavior.

## 1. Evidence and editorial rule

Write descriptions of current behavior from the implementation:
`selfhost/src/*.dva`, `prelude.dva`, `std/*.dva`, the driver and build scripts,
and executable cases in `tests/`. Use a pinned commit when auditing a topic.
The operator table has its own source input,
`process/spec/operators.yaml`; check its generated output against the parser
and runtime behavior. Treat prose as material to audit, not as proof that a
feature works.

The topic files in `process/spec/` state intended behavior. If a topic spec,
the implementation, `GRAMMAR.md`, or the project rules disagree, record the
exact example and file locations, notify the maintainer, and resolve the
discrepancy before publishing a definitive claim. Keep unresolved behavior
marked as such in reader-facing pages. Do not turn proposals or archived
plans into descriptions of the current language.

Each published page should state its audience, status, last audited commit,
implementation anchors, and runnable example or test anchors. Avoid fixed
test totals and release claims that can become stale. Never copy credentials,
machine-specific paths, or local service details from working notes into the
public documentation.

## 2. Audiences and reading paths

| Audience | Entry point | Destination |
|---|---|---|
| Curious reader | Root README | Tour and examples |
| New Dva user | Install and quickstart | Guides, then reference |
| Experienced user | Language reference | Standard library and recipes |
| edva user | CLI reference | Targets, diagnostics, REPL |
| Integrator | FFI and targets guide | ABI and platform notes |
| Compiler contributor | Contributor guide | Pipeline, bootstrap, tests |
| Maintainer | Documentation policy | Audit log and release checks |

Keep three routes visible on the site home page: **learn Dva**, **use edva**,
and **work on the compiler**. A reference page answers what a construct does;
a guide shows how to use it; a compiler page explains how it is implemented.

## 3. Proposed hierarchy

Use the existing `doc/` Quarto project for the reader-facing book. Rewrite
and move its current chapters before changing navigation. Keep normative
topic specifications under `process/spec/`; the book links to them where a
full rule or design rationale is useful. Keep `GRAMMAR.md` as a compact grammar
and generated operator-table supplement, with its authority statement fixed
during the audit.

```text
README.md                         repository entry and status
doc/
  index.qmd                       book home and reading paths
  start/                           installation, quickstart, tour
  guide/                           task-oriented language guides
  reference/
    language/                      audited language reference
    edva-cli.qmd                   driver and REPL reference
    diagnostics.qmd                errors and recovery
    stdlib/                        one page per public module
  examples/                        runnable example gallery
  compiler/                        architecture and contributor manual
  contributing/                    changes, review, doc policy
  _quarto.yml                      navigation for published pages
GRAMMAR.md                        compact grammar supplement
process/spec/                     topic specs and this roadmap
```

Use stable links from the root README and `doc/index.qmd`. Retain old Quarto
chapter URLs only if they can be redirected or replaced with an explicit
pointer; do not leave two active pages making competing claims.

## 4. Proposed contents

The lists below are the planned tables of contents. A file listed here is a
deliverable, not a claim that it already exists.

### Entry and learning path

- `README.md` — what Dva and edva are; current project status; minimum
  requirements; one build-and-run example; three reading paths; repository
  map; support and issue links.
- `doc/index.qmd` — audience routes; current vs proposed features; how to
  read examples and reference pages; source and version policy.
- `doc/start/install.qmd` — supported hosts and LLVM/clang requirements;
  obtaining the compiler; bootstrap/build commands; verifying the result;
  common setup failures; target-specific prerequisites.
- `doc/start/quickstart.qmd` — first program; compile, run, and inspect IR;
  bindings; functions; choices and cycles; imports; next steps.
- `doc/start/tour.qmd` — syntax model; values and types; control flow;
  functions; data structures; errors; modules; FFI and compile-time work.

### Task-oriented language guides

- `doc/guide/bindings-and-modules.qmd` — bindings and mutability; scope;
  global and private/public declarations; `#use`; multi-file modules;
  initialization and imports.
- `doc/guide/functions-and-closures.qmd` — separate signatures and bodies;
  calls and application operators; inference limits; closure capture and
  lifetime; higher-order examples.
- `doc/guide/choices-and-cycles.qmd` — choice guards and exhaustiveness;
  statement choices; ram/enum matching; cycle iteration and escape;
  common diagnostics.
- `doc/guide/data-and-memory.qmd` — records, enums, rams, arrays, slices,
  maps, strings, Builders; initialization; copying; views; arena lifetime.
- `doc/guide/errors-and-io.qmd` — fallible indexing; `Error` propagation;
  standard input/output; formatting; files and network examples.
- `doc/guide/metaprogramming.qmd` — `Type`, `#!`, type reflection, compile-time
  values, diagnostics, and limits; distinguish implemented forms from plans.
- `doc/guide/ffi-and-targets.qmd` — `#foreign`, `#export`, C ABI, pointers and
  buffers, hosted vs bare-metal builds, cross compilation, platform limits.

### Reference

- `doc/reference/language/index.qmd` — navigation by syntax and concept;
  terminology; evidence and version notes; links to detailed pages.
- `doc/reference/language/lexical.qmd` — encoding; identifiers; literals;
  indentation; comments; tokenization; whitespace-sensitive operators.
- `doc/reference/language/declarations.qmd` — directives; bindings; scope;
  modules; visibility; types; function signatures.
- `doc/reference/language/expressions.qmd` — expression forms; precedence;
  operand/result rules; choices; cycles; assignment; calls. Generate the
  operator table from `process/spec/operators.yaml` rather than recopying it.
- `doc/reference/language/types.qmd` — primitive and composite forms;
  unification; inference failures; layout and erased function values.
- `doc/reference/language/runtime.qmd` — value representation; memory and
  lifetimes; strings and Builders; errors; foreign boundary.
- `doc/reference/edva-cli.qmd` — invocation and inputs; every current option;
  output files; module search; target selection; IR mode; run mode; REPL;
  exit status. Derive flags from `selfhost/src/edva.dva` and its driver tests.
- `doc/reference/diagnostics.qmd` — diagnostic format and classes; code
  catalog generated or checked against source; representative fixes; error
  reporting limits; how to report an unexpected diagnostic.
- `doc/reference/stdlib/index.qmd` — module inventory; platform support;
  import forms; links to per-module pages.
- `doc/reference/stdlib/prelude.qmd` — automatic imports; public helpers;
  shadowing and `-no-prelude` behavior.
- `doc/reference/stdlib/<module>.qmd` — one page for each public module in
  `std/`: `str`, `unicode`, `math`, `sort`, `type`, `io`, `in`, `fmt`, `json`,
  `sys`, `os`, `libc`, `net`, and `net/http`. Each page lists exported types and
  signatures, behavior and error cases, target requirements, and a runnable
  example. Exclude internal probes from the public API inventory.

### Examples, compiler, and contribution

- `doc/examples/index.qmd` — examples by task and difficulty; exact commands;
  expected output; prerequisites; target and network/hardware caveats.
- `doc/compiler/architecture.qmd` — repository map; compilation stages;
  AST, typed AST, and LLVM boundary; ownership of each source module.
- `doc/compiler/typing.qmd` — type environment; unification; dependency
  graph/SCC passes; constraints; annotation and refresh; diagnostic flow.
- `doc/compiler/codegen-and-runtime.qmd` — typed lowering; LLVM 18 API;
  closures and ram layouts; arena runtime; generated IR and linking.
- `doc/compiler/bootstrap.qmd` — seed contents; rebuilding edva; fixed-point
  check; generated files; reproducibility criteria and current limitations.
- `doc/compiler/testing.qmd` — build/test commands; pass/fail/driver tests;
  expected-output files; sandbox limits; focused test workflow; parity gates.
- `doc/compiler/targets.qmd` — host toolchain; target triples; cross linker;
  no-runtime path; target-specific examples and known unsupported paths.
- `doc/contributing/index.qmd` — issue workflow; change boundaries; code and
  example style; review expectations; release notes.
- `doc/contributing/documentation.qmd` — evidence hierarchy; page template;
  runnable snippets; drift reports; link and book checks; review ownership.

## 5. Existing material to migrate or retire

| Existing material | Treatment |
|---|---|
| `doc/*.qmd` | Audit and rewrite; retain useful explanations only. |
| `doc/_quarto.yml` | Replace chapter list after the new files exist. |
| `doc/target_organization.md` | Check target claims for the targets guide. |
| `GRAMMAR.md` | Audit against code; keep compact grammar and generated table. |
| `process/spec/*.md` | Compare topic by topic; link after drift is resolved. |
| `std/*.dva`, `prelude.dva` | Extract actual public API and examples. |
| `examples/`, `tests/` | Source runnable snippets and edge cases. |
| `selfhost/PLAN.md`, `selfhost/CHECKPOINT.md` | Verify every claim. |
| `process/archive/` | Historical only; never a current-behavior source. |

The existing Quarto preface explicitly calls the book stale, and several
chapters describe old syntax and an Odin compiler. `GRAMMAR.md` also names
`src/*.odin` as the final authority, although the active compiler is in
`selfhost/src/`. These are known drift items, not text to carry forward.
Replace the static test-count transcript in `doc/07-test-suite.qmd` with
commands and live test structure.

## 6. Delivery sequence and exit criteria

1. **Inventory and evidence ledger.** Record each public feature, its source
   anchor, tests, spec page, and status. Open a discrepancy entry for every
   conflict. Freeze the audited commit for each batch of pages.
2. **Usable front door.** Publish the README, installation guide, quickstart,
   site home, CLI reference, and a small verified example set. A new reader
   must be able to build and run a program without consulting working notes.
3. **Language reference.** Audit lexical rules, declarations, expressions,
   types, and runtime semantics against source and tests. Resolve documented
   conflicts before removing stale warnings from the book.
4. **Guides and library API.** Write the task guides and module pages from
   public signatures. Compile every included snippet and check its output.
5. **Compiler manual.** Document the implemented pipeline, bootstrap,
   testing, target support, and current limitations from source and harnesses.
6. **Publication gate.** Update Quarto navigation; check internal links;
   render the book; run snippet checks and the required compiler tests; verify
   that no stale chapter or secret-bearing working note is published.

For every phase, review the pages against a pinned commit and list unresolved
questions in an audit log. A phase is complete when its pages, examples, and
navigation work and a maintainer has resolved or clearly marked every drift
entry affecting those pages. Documentation changes should accompany later
source changes that alter user-visible behavior.
