# `std/vid` — Isomorphic Model–View–Update (MVU) & Browser Framework for Edva

`std/vid` (`#use vid` and `#use vid/browser`, also available as the package `@vid` and `@vid/browser`) is a lightweight, zero-Virtual-DOM isomorphic UI and browser framework for [Edva](https://github.com/edva-lang/edva).

The same pure Model–View–Update (`Model`, `Message`, `update`, `bind_view`) logic compiles unchanged to both:
- **Native Server-Side Rendering (SSR) & Headless Tests (`x86_64-unknown-linux-gnu`)** via `#use vid` (or `#use @vid`)
- **Browser WebAssembly (`wasm32-unknown-unknown`)** via `#use vid` + `#use vid/browser` (or `#use @vid` + `#use "@vid/browser"`), backed by `std/dom` and its compiler-generated `.dom.js` host adapter

---

## Table of Contents

1. [Architecture & Core Concepts](#1-architecture--core-concepts)
2. [Project Setup (`edva.ccl`)](#2-project-setup-edvaccl)
3. [End-to-End Isomorphic MVU Walkthrough](#3-end-to-end-isomorphic-mvu-walkthrough)
4. [Core API Reference (`std/vid` / `@vid`)](#4-core-api-reference-stdvid--vid)
   - [Sink Lifecycle & Scoped Scratch Arena](#41-sink-lifecycle--scoped-scratch-arena)
   - [Declarative Selector Bindings](#42-declarative-selector-bindings)
   - [WAI-ARIA & Semantic Attribute Helpers](#43-wai-aria--semantic-attribute-helpers)
   - [Keyed Children & Dynamic Lists (`UiNode`)](#44-keyed-children--dynamic-lists-uinode)
   - [Declarative Events & Headless Simulation](#45-declarative-events--headless-simulation)
   - [SSR HTML Hydration & Wasm Loader](#46-ssr-html-hydration--wasm-loader)
   - [State Inspection & Testing Helpers](#47-state-inspection--testing-helpers)
5. [Browser API Reference (`std/vid/browser` / `@vid/browser`)](#5-browser-api-reference-stdvidbrowser--vidbrowser)
   - [`BrowserSink` & Single-Batch Rendering](#51-browsersink--single-batch-rendering)
   - [Live Form Controls & Direct DOM Helpers](#52-live-form-controls--direct-dom-helpers)
   - [2D Canvas, Animation Loop & Timing](#53-2d-canvas-animation-loop--timing)
   - [WebSockets](#54-websockets)
   - [URL Query, Storage, Clipboard, Download & Console](#55-url-query-storage-clipboard-download--console)

---

## 1. Architecture & Core Concepts

### Zero Virtual DOM (Fine-Grained Selector Diffing)
Instead of constructing and diffing a full Virtual DOM tree on every frame, `vid` binds model fields directly to semantic CSS selectors (`#count`, `#theme-css`, `#preview-card`):

```dva
vid::text(s, "#count-label", str::from_int(model.count))
vid::class(s, "#decrement-btn", "disabled", model.count == 0)
vid::aria_disabled(s, "#decrement-btn", model.count == 0)
```

`vid::Sink` maintains two maps (`committed` and `current`) keyed by `(op, selector, name)`. During `bind_view(s, model)`, `vid` compares each incoming value against the last committed state and stages a `Patch` **only when the value actually changed**.

### SSR Pre-rendering + Client-Side Hydration
1. **Server-Side Rendering (`vid::render_html`)**: On the server (or during static site generation), `vid::render_html(template_html, sink, view_fn)` runs `view_fn`, collects the initial patches, and applies them directly to `#id` elements in the HTML string (setting text content, `value="..."`, `<option selected>`, boolean `checked`/`hidden` attributes, `class`, `style`, and inner HTML). The browser receives a fully populated page on the first HTTP response with zero flash of unstyled or empty content.
2. **Client-Side Hydration (`browser::render`)**: When `client.wasm` loads in the browser, it creates a `browser::BrowserSink` over the *already-existing* server-rendered DOM, attaches event listeners, and syncs live client state (`localStorage`, URL query parameters) without recreating DOM nodes.

### Single-Batch `std/dom` Flushing
On `wasm32-unknown-unknown`, `browser::flush` pre-resolves and caches `dom::Element` handles by selector, queues all staged `vid::Patch` operations and keyed-list reconciliations into a single `dom::Batch`, and flushes them across the Wasm boundary in one call (`dom::flush`).

### Scoped Scratch Arena (`vid::with_scope`)
Formatting strings for view bindings or handling high-frequency browser events (`input`, `requestAnimationFrame`) allocates temporary strings. `vid::with_scope` executes view rendering and event callbacks inside a reusable 1 MiB scratch arena that resets in $O(1)$ time when the outermost scope exits, while committed state and application models escape to the persistent arena via `mem::escape`.

---

## 2. Project Setup (`edva.ccl`)

An isomorphic Edva web application typically defines two build targets in `edva.ccl`:
1. `client` (`target = wasm32-unknown-unknown`) compiling `src/client.dva` to `public/client.wasm` (the compiler automatically emits `public/client.dom.js` beside it when `std/dom` or `vid/browser` is used).
2. The native server/CLI binary (`target = native`) compiling `src/main.dva`.

```ccl
name = my_app
version = 0.1.0
edva = 1.4.2

dependencies =
  edvin =
    path = ../edvin
    target = native
  vid =
    path = ../vid

targets =
  client =
    src = src/client.dva
    out = public/client.wasm
    target = wasm32-unknown-unknown
    opt = -O3
  my_app =
    src = src/main.dva
    out = my_app
    target = native
    opt = -O3
```

---

## 3. End-to-End Isomorphic MVU Walkthrough

### Step 1: Shared Pure Model–View–Update (`src/ui.dva`)
`src/ui.dva` imports only `#use vid` (or `#use @vid`) and `#use str` so it compiles to both native Linux and WebAssembly:

```dva
#use str
#use vid

#public

#type Model (
   count: Int,
   step: Int
)

#type Message <[
   Increment
   Decrement
   Reset
   SetStep: Int
]>

init: () => Model
init = !=> Model(0, 1)

update: Model, Message => Model
update = m, msg =>
   msg
      [Message::Increment] Model(m.count + m.step, m.step)
      [Message::Decrement] Model(m.count - m.step, m.step)
      [Message::Reset]     Model(0, m.step)
      [Message::SetStep]   step => Model(m.count, step > 0 | step | 1)

bind_view: vid::Sink, Model => ()
bind_view = s, m =>
   vid::text(s, "#count-value", str::from_int(m.count))
   vid::value(s, "#step-input", str::from_int(m.step))
   vid::class(s, "#count-value", "negative", m.count < 0)
   vid::aria_disabled(s, "#reset-btn", m.count == 0)
   vid::query(s, "count", str::from_int(m.count))
```

### Step 2: Native Server with SSR Hydration (`src/main.dva`)
`src/main.dva` renders the Pug/HTML template, pre-populates initial model bindings with `vid::render_html`, and injects `vid::loader_script("/client.wasm")`:

```dva
#use @edvin
#use vid
#use "ui"

template_html = """
<!doctype html>
<html>
<body>
  <h1 id="count-value">0</h1>
  <input id="step-input" type="number" value="1">
  <button id="dec-btn">-</button>
  <button id="inc-btn">+</button>
  <button id="reset-btn">Reset</button>
  ${vid::loader_script("/client.wasm")}
</body>
</html>
"""

index_handler: edvin::RequestContext => < edvin::Response | edvin::HttpError >
index_handler = ctx =>
   s = vid::sink!
   initial = ui::init!
   html = vid::render_html(template_html, s, (sink => ui::bind_view(sink, initial)))
   <+ edvin::ok_html(html) ->

a = edvin::app("127.0.0.1", 8080)
edvin::get(a, "/", index_handler)
edvin::static_dir(a, "./public")
edvin::serve(a, 1)
```

### Step 3: Browser Wasm Client (`src/client.dva`)
`src/client.dva` hydrates the server-rendered DOM using `browser::BrowserSink`:

```dva
#use mem
#use str
#use vid
#use vid/browser
#use "ui"

#type AppState (
   ready: <>,
   bs: browser::BrowserSink,
   model: ui::Model
)

state: AppState
state = AppState(<->, browser::BrowserSink(vid::Sink(vid::Patches(), vid::StateMap(), vid::StateMap()), 0, browser::ElementMap()), ui::init!)

render: <> => ()
render = sync_url =>
   applied = browser::render(state.bs, (s =>
      ui::bind_view(s, state.model)
      vid::on_click(s, "#inc-btn", (!=> dispatch(ui::Message::Increment)))
      vid::on_click(s, "#dec-btn", (!=> dispatch(ui::Message::Decrement)))
      vid::on_click(s, "#reset-btn", (!=> dispatch(ui::Message::Reset)))
      vid::on_input(s, "#step-input", (!=>
         raw = browser::get_value(state.bs, "#step-input")
         step = str::to_int(raw) |_| 1
         dispatch(ui::Message::SetStep(step))
      ))
   ), sync_url)

dispatch: ui::Message => ()
dispatch = msg =>
   vid::with_scope((!=>
      next = ui::update(state.model, msg)
      mem::escape((!=>
         state.model = next
      ))
      render(<+>)
   ))

main: () => ()
main = !=>
   !state.ready
      |
         state.bs = browser::create!
         state.model = ui::init!
         state.ready = <+>
         render(<->)
```

---

## 4. Core API Reference (`std/vid` / `@vid`)

Import with `#use vid` (standard library) or `#use @vid` (package dependency).

### 4.1 Sink Lifecycle & Scoped Scratch Arena

| Function | Signature | Description |
| :--- | :--- | :--- |
| `sink` | `() => Sink` | Allocates a new target-neutral `Sink` (`staged`, `committed`, `current`) in the persistent arena. |
| `with_scope` | `(() => ()) => ()` | Runs a zero-arg closure inside a reusable 1 MiB scratch arena. Supports nesting; resets the arena in $O(1)$ when the outermost `with_scope` exits. Use `mem::escape` inside `with_scope` to promote values to the persistent arena. |
| `render_staged` | `Sink, (Sink => ()) => Int` | Clears `s.staged`, executes `view_fn(s)` inside `with_scope`, and returns the number of changed patches staged in `s.staged`. |
| `render_ssr` | `Sink, (Sink => ()) => Int` | Runs `render_staged(s, view_fn)` and immediately calls `commit(s)`. Returns the number of committed patches. |
| `commit` | `Sink => Int` | Commits all staged patches (including `OP_QUERY`) into `s.committed` and clears `s.staged`. |
| `commit_with` | `Sink, <> => Int` | Commits staged patches into `s.committed`. When `include_query` is `<->`, `OP_QUERY` patches remain uncommitted until a URL-syncing render runs. |
| `reset_staged` | `Sink => ()` | Clears `s.staged`, staged `KeyedPatches`, and staged `EventKeys` without altering `s.committed`. |
| `reset_committed` | `Sink => ()` | Clears `staged`, `committed`, and `current` maps so the next render emits a full patch set. |
| `record_live_value` | `Sink, String, String => ()` | Records the live DOM `.value` of a form control (`selector`) into `s.committed` and `s.current` so subsequent renders accurately diff against user edits. |

---

### 4.2 Declarative Selector Bindings

All binding functions compare the new value against `s.committed` and stage a `Patch` only when the value has changed.

| Function | Signature | Patch Op | Description |
| :--- | :--- | :--- | :--- |
| `text` | `Sink, String, String => ()` | `OP_TEXT` (`1`) | Binds `.textContent` on `selector` (or raw text inside `<style>`/`<script>` during SSR). |
| `value` | `Sink, String, String => ()` | `OP_VALUE` (`2`) | Binds `.value` on `<input>`, `<select>`, or `<textarea>`. In SSR (`render_html`), updates `value="..."`, marks the matching `<option value="...">` as `selected`, or sets `<textarea>` inner text. |
| `attr` | `Sink, String, String, String => ()` | `OP_ATTR` (`3`) | Binds attribute `name` to `val` on `selector`. |
| `remove_attr` | `Sink, String, String => ()` | `OP_REMOVE_ATTR` (`4`) | Removes attribute `name` from `selector`. |
| `checked` | `Sink, String, <> => ()` | `OP_CHECKED` (`5`) | Binds boolean `.checked` property/attribute on a checkbox or radio input. |
| `hidden` | `Sink, String, <> => ()` | `OP_HIDDEN` (`6`) | Binds boolean `.hidden` property/attribute on `selector`. |
| `style` | `Sink, String, String, String => ()` | `OP_STYLE` (`7`) | Binds inline CSS style property `prop` (e.g. `"background-color"`) to `val` on `selector`. |
| `class` | `Sink, String, String, <> => ()` | `OP_CLASS` (`8`) | Toggles CSS class token `cls` on `selector` when `enabled` is `<+>` or `<->`. |
| `query` | `Sink, String, String => ()` | `OP_QUERY` (`9`) | Binds URL query parameter `?param_name=val` (synced to the browser address bar when `browser::render` / `browser::flush` is called with `sync_url = <+>`). |
| `html` | `Sink, String, String => ()` | `OP_HTML` (`10`) | Binds raw inner HTML on `selector`. Prefer `text` or `keyed_children` for untrusted content. |

---

### 4.3 WAI-ARIA & Semantic Attribute Helpers

Convenience wrappers around `vid::attr` for accessible interactive controls:

| Function | Signature | Equivalent Attribute |
| :--- | :--- | :--- |
| `aria_pressed` | `Sink, String, <> => ()` | `aria-pressed="true"` / `"false"` |
| `aria_selected` | `Sink, String, <> => ()` | `aria-selected="true"` / `"false"` |
| `aria_expanded` | `Sink, String, <> => ()` | `aria-expanded="true"` / `"false"` |
| `aria_disabled` | `Sink, String, <> => ()` | `aria-disabled="true"` / `"false"` |
| `href` | `Sink, String, String => ()` | `href="<url>"` |

---

### 4.4 Keyed Children & Dynamic Lists (`UiNode`)

When the number or order of child elements inside a container is dynamic (e.g., `<select>` options, todo items, or saved presets), construct a `UiNodes` array using `el` / `keyed_el` and bind it with `keyed_children`.

#### Types
```dva
#type UiAttr  (name: String, value: String)
#type UiAttrs UiAttr{}

#type UiNode (
   tag: String,
   key: String,
   id: String,
   cls: String,
   text: String,
   attrs: UiAttrs
)
#type UiNodes UiNode{}
```

#### Functions

| Function | Signature | Description |
| :--- | :--- | :--- |
| `el` | `String, String, String => UiNode` | Creates an unkeyed `UiNode` with `tag`, CSS class `cls`, and escaped text content `txt`. |
| `keyed_el` | `String, String, String, String => UiNode` | Creates a keyed `UiNode` with `tag`, unique `key` (rendered as `data-vid-key="..."`), CSS class `cls`, and text `txt`. |
| `with_id` | `UiNode, String => UiNode` | Returns a copy of `node` with its `id` attribute set (`id="..."`). When an `id` is set, `BrowserSink` also registers `"#" + id` in its element cache so you can immediately attach `vid::on_click(s, "#" + id, ...)` in the same render pass. |
| `with_attr` | `UiNode, String, String => UiNode` | Returns a copy of `node` with `(name, val)` appended to `node.attrs`. Can be chained. |
| `keyed_children` | `Sink, String, UiNodes => ()` | Binds `nodes` as the children of `selector`. Stages `OP_HTML` for SSR (`render_html`) and a `KeyedPatch` for incremental DOM reconciliation in `BrowserSink` (reusing existing DOM elements by key, removing deleted keys, and reordering via `dom::queue_append`). |
| `node_to_html` | `UiNode => String` | Serializes a single `UiNode` to an escaped HTML string. |
| `nodes_to_html` | `UiNodes => String` | Serializes a `UiNodes` array to a concatenated HTML string. |
| `escape_html` | `String => String` | Escapes `&`, `<`, `>`, `"`, and `'` for safe HTML inclusion. |

---

### 4.5 Declarative Events & Headless Simulation

Event listeners can be declared directly inside your render/view pass. In the browser (`BrowserSink`), `vid` attaches a single native DOM listener per `(selector, event_name)` pair and routes events to the latest closure inside `vid::with_scope`. In native unit tests, you can trigger those exact listeners headlessly without a browser.

| Function | Signature | Description |
| :--- | :--- | :--- |
| `on` | `Sink, String, String, (() => ()) => ()` | Registers `action` for `(selector, event_name)` in the event slot table. |
| `on_click` | `Sink, String, (() => ()) => ()` | Shorthand for `on(s, selector, "click", action)`. |
| `on_input` | `Sink, String, (() => ()) => ()` | Shorthand for `on(s, selector, "input", action)`. |
| `on_change` | `Sink, String, (() => ()) => ()` | Shorthand for `on(s, selector, "change", action)`. |
| `dispatch_event` | `Sink, String, String => <>` | Invokes the bound handler for `(selector, event_name)` inside `with_scope`. Returns `<+>` if a handler was found and executed, or `<->` otherwise. |
| `trigger_click` | `Sink, String => <>` | Shorthand for `dispatch_event(s, selector, "click")`. |
| `trigger_input` | `Sink, String => <>` | Shorthand for `dispatch_event(s, selector, "input")`. |
| `trigger_change` | `Sink, String => <>` | Shorthand for `dispatch_event(s, selector, "change")`. |

---

### 4.6 SSR HTML Hydration & Wasm Loader

| Function | Signature | Description |
| :--- | :--- | :--- |
| `render_html` | `String, Sink, (Sink => ()) => String` | Runs `view_fn(s)` inside `with_scope`, applies all staged patches to `#id` elements in `html_str`, commits `s`, and returns the populated HTML string. |
| `apply_html` | `String, Sink => String` | Applies currently staged patches in `s.staged` to `#id` elements in `html_str` without committing `s`. |
| `loader_script` | `String => String` | Returns a self-contained `<script type="module">` snippet that imports `instantiateDOM` from `<wasm_url>.dom.js`, wires the `vid/browser` host imports (2D Canvas, `requestAnimationFrame`, WebSockets, `snprintf`, and arena trimming), instantiates `wasm_url`, and calls `main()` / `init()`. |

---

### 4.7 State Inspection & Testing Helpers

| Function | Signature | Description |
| :--- | :--- | :--- |
| `pending_count` | `Sink => Int` | Returns the number of uncommitted `Patch` entries currently in `s.staged`. |
| `pending_patches` | `Sink => Patches` | Returns the staged `Patch{}` array. |
| `pending_keyed_patches` | `Sink => KeyedPatches` | Returns the staged `KeyedPatch{}` array from `keyed_children`. |
| `staged_events` | `Sink => EventKeys` | Returns the `EventKey{}` array registered during the current render pass. |
| `bound_text` | `Sink, String => String` | Returns the latest `vid::text` value bound to `selector` (or `""`). |
| `bound_value` | `Sink, String => String` | Returns the latest `vid::value` bound to `selector` (or `""`). |
| `bound_attr` | `Sink, String, String => String` | Returns the latest `vid::attr` value for `(selector, name)` (or `""`). |
| `bound_query` | `Sink, String => String` | Returns the latest `vid::query` value for `param_name` (or `""`). |
| `bound_html` | `Sink, String => String` | Returns the latest `vid::html` or serialized `vid::keyed_children` HTML bound to `selector` (or `""`). |

---

## 5. Browser API Reference (`std/vid/browser` / `@vid/browser`)

Import in `wasm32-unknown-unknown` targets with `#use vid/browser` (standard library) or `#use "@vid/browser"` (package dependency).

### 5.1 `BrowserSink` & Single-Batch Rendering

| Function | Signature | Description |
| :--- | :--- | :--- |
| `create` | `() => BrowserSink` | Creates a `BrowserSink` in the persistent arena with an initialized `vid::Sink`, a reusable `dom::Batch`, and an empty `ElementMap` cache. |
| `render` | `BrowserSink, (vid::Sink => ()), <> => Int` | Runs `vid::render_staged(bs.ui, view_fn)` and flushes all changed bindings to the DOM via `flush(bs, sync_url)`. Returns the number of applied patches. |
| `flush` | `BrowserSink, <> => Int` | Pre-resolves target elements, reconciles `keyed_children` lists, queues all staged `vid::Patch` operations into `bs.batch`, flushes the batch in one `dom::flush` call, attaches any new declarative event listeners, and (when `sync_url` is `<+>`) updates URL query parameters via `dom::query_set`. |
| `element` | `BrowserSink, String => dom::Element` | Looks up `selector` in `bs.elements`, calling `dom::find(selector)` and caching the handle on first access. |
| `warm` | `BrowserSink, String => ()` | Pre-resolves `selector` into `bs.elements` if not already cached. |

---

### 5.2 Live Form Controls & Direct DOM Helpers

| Function | Signature | Description |
| :--- | :--- | :--- |
| `get_value` | `BrowserSink, String => String` | Reads the live `.value` of an `<input>`, `<select>`, or `<textarea>` and calls `vid::record_live_value(bs.ui, selector, val)` so future renders know the control's live DOM state. |
| `set_value` | `BrowserSink, String, String => ()` | Immediately sets `.value` on `selector` and records it in `bs.ui`. |
| `set_text` | `BrowserSink, String, String => ()` | Immediately sets `.textContent` on `selector`. |
| `set_attr` | `BrowserSink, String, String, String => ()` | Immediately sets attribute `name` to `val` on `selector`. |
| `set_html` | `String, String => ()` | Immediately sets `.innerHTML` on `selector`. |
| `on` | `BrowserSink, String, String, (() => ()) => ()` | Imperatively attaches a direct DOM event listener on `selector` for `event_name`. |
| `on_click` | `BrowserSink, String, (() => ()) => ()` | Imperatively attaches a `"click"` listener on `selector`. |
| `on_input` | `BrowserSink, String, (() => ()) => ()` | Imperatively attaches an `"input"` listener on `selector`. |
| `on_change` | `BrowserSink, String, (() => ()) => ()` | Imperatively attaches a `"change"` listener on `selector`. |

---

### 5.3 2D Canvas, Animation Loop & Timing

| Function | Signature | Description |
| :--- | :--- | :--- |
| `canvas_clear` | `String, String => ()` | Fills the entire `<canvas>` matching `selector` with CSS `color`. |
| `canvas_rect` | `String, Float, Float, Float, Float, String => ()` | Draws a filled rectangle `(x, y, w, h)` with CSS `color` on `selector`. |
| `canvas_circle` | `String, Float, Float, Float, String => ()` | Draws a filled circle at `(x, y)` with radius `r` and CSS `color` on `selector`. |
| `canvas_line` | `String, Float, Float, Float, Float, Float, String => ()` | Strokes a line from `(x1, y1)` to `(x2, y2)` with line `width` and CSS `color` on `selector`. |
| `canvas_text` | `String, String, Float, Float, String, String => ()` | Draws `text` at `(x, y)` using CSS `font` and `color` on `selector`. |
| `canvas_put_rgba` | `String, Addr, Int, Int => ()` | Blits a raw `w * h * 4` RGBA byte buffer (`rgba_ptr`) to `<canvas>` `selector` via `putImageData`. |
| `request_frame` | `() => ()` | Schedules `requestAnimationFrame` to invoke the Wasm module's exported `on_frame: Float => ()` callback. |
| `now_ms` | `() => Float` | Returns high-resolution monotonic time in milliseconds (`performance.now()`). |

---

### 5.4 WebSockets

| Function | Signature | Description |
| :--- | :--- | :--- |
| `ws_connect` | `String, Int, Int, Int => ()` | Opens a browser `WebSocket` to `path_or_url`. Dispatches `open_id`, `msg_id`, and `close_id` to exported `on_event: Int => ()`. |
| `ws_send` | `String => ()` | Sends a UTF-8 text frame over the active WebSocket if open. |
| `ws_recv` | `() => String` | Reads the most recent incoming WebSocket message payload (up to 4095 bytes). |
| `ws_close` | `() => ()` | Closes the active WebSocket connection. |

---

### 5.5 URL Query, Storage, Clipboard, Download & Console

| Function | Signature | Description |
| :--- | :--- | :--- |
| `page_url` | `() => String` | Returns `location.origin + location.pathname` (without query string or hash), or `""` on error. |
| `query_get` | `String => String` | Reads URL query parameter `?key=...` from `location.search`, returning `""` when absent. |
| `storage_get` | `String => String` | Reads `localStorage.getItem(key)`, returning `""` when absent or blocked. |
| `storage_set` | `String, String => ()` | Writes `localStorage.setItem(key, value)`. |
| `clipboard_write` | `String => ()` | Copies `text` to the system clipboard via `navigator.clipboard.writeText`. |
| `download_text` | `String, String => ()` | Triggers a browser file download named `filename` with UTF-8 `text` content. |
| `console_log` | `String => ()` | Logs `msg` to the browser developer console (delegates to `std/dom/console::log`; for `error`, `warn`, `info`, `time`, `time_end`, import `#use dom/console` directly). |
