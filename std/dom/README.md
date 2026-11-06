# `std/dom` host bridge

`std/dom.dva` is the typed Edva API and `std/dom/bridge.js` is its WebAssembly
host implementation. The compiler emits the bridge beside a Wasm output as
`<output>.dom.js`. Serve that file with the Wasm module and initialize the app
with `instantiateDOM` from the generated adapter:

```js
import { instantiateDOM } from "./client.dom.js";
const { instance, dom } = await instantiateDOM(fetch("./client.wasm"));
instance.exports.main(0, 0);
```

`instantiateDOM` provides DOM handles, callbacks, memory allocation, and the
standard libc shims used by the adapter. Callers can still provide additional
imports with the second argument; their `env` entries override defaults.

## API coverage

The Dva API covers element lookup and creation, tree edits, text/value/checked
properties, attributes, styles, classes, geometry, computed styles, event
listeners and event data, plus batched writes and measurements. Handles are
opaque, generation-checked values. Event and listener handles are scoped to the
adapter instance.

Browser facilities that are generic across apps are also exposed from
`std/dom.dva`:

- `storage_get(key)` and `storage_set(key, value)` use `localStorage`; a missing key
  reads as the empty string.
- `query_get(key)` and `query_set(key, value)` read and update URL query
  parameters. Setting an empty value removes that parameter. Other parameters
  and the URL fragment are preserved.
- `page_url()` returns the current origin and pathname, without query or
  fragment.
- `clipboard_write(text)` writes text through the Clipboard API. The operation
  reports synchronous unavailability as an Edva `Error`; asynchronous browser
  rejection is sent to the adapter's error reporter.
- `download_text(filename, text)` downloads UTF-8 text as
  `text/plain;charset=utf-8`.

These APIs return Edva ramifications, so callers should propagate or handle
errors rather than silently discard them. Browser permission policies still
apply to storage, clipboard, and downloads.

## Boundary

The bridge owns mechanics that are reusable browser capabilities. Applications
own policy and presentation: storage keys and formats, which query parameter
represents app state, generated file names/content, and page-specific views.
Construct dynamic UI with `create`, `append`, `attr`, and `text`; avoid passing
untrusted values to `innerHTML`. The adapter intentionally does not provide a
raw HTML injection API.

New host operations should use an opcode in `bridge.js` and a typed public
wrapper in `dom.dva`. Keep the opcode numeric values synchronized, and keep
application-specific state transitions out of this shared library.
