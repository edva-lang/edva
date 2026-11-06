// Browser adapter for std/dom. Compiler and adapter are shipped together.
// Command opcodes describe DOM operations, never Edva runtime type signatures.
export const OPS = Object.freeze({
  FIND: 1, FIND_IN: 2, CREATE: 3, APPEND: 4, INSERT: 5, DETACH: 6, REMOVE: 7,
  TEXT_GET: 10, TEXT: 11, VALUE_GET: 12, VALUE: 13, ATTR_GET: 14, ATTR: 15,
  REMOVE_ATTR: 16, STYLE: 17, CLASS: 18, CHECKED_GET: 19, CHECKED: 20,
  HIDDEN: 21, INVALIDATE: 22, INVALIDATE_TREE: 23, BOUNDS: 30, COMPUTED: 31,
  ON: 40, OFF: 41, TARGET: 42, MATCHED: 43, EVENT_VALUE: 44, KEY: 45,
  POINTER: 46, PREVENT: 47, STOP: 48, EMPTY: 49, PARENT: 50, CHILDREN: 51,
  STORAGE_GET: 60, STORAGE_SET: 61, QUERY_GET: 62, QUERY_SET: 63,
  PAGE_URL: 64, CLIPBOARD_WRITE: 65, DOWNLOAD_TEXT: 66
});
export const ERR = Object.freeze({
  NOT_FOUND: 1, INVALID_SELECTOR: 2, STALE_HANDLE: 3, BROWSER: 4,
  PENDING_WRITES: 5, CLOSED: 6, EXPIRED_EVENT: 7, INVALID_OPTIONS: 8,
  DUPLICATE_KEY: 9, INVALID_RESULT: 10, CALLBACK: 11
});

class Failure extends Error {
  constructor(code, message) { super(message); this.code = code; }
}
class Registry {
  constructor() { this.slots = [null]; this.free = []; }
  add(value) {
    const index = this.free.length ? this.free.pop() : this.slots.length;
    const generation = this.slots[index]?.generation ?? 1;
    this.slots[index] = { generation, value };
    return (BigInt(generation) << 32n) | BigInt(index);
  }
  get(id, code = ERR.STALE_HANDLE) {
    id = BigInt.asUintN(64, BigInt(id));
    const slot = this.slots[Number(id & 0xffffffffn)];
    if (!slot || slot.value === null || BigInt(slot.generation) !== (id >> 32n)) {
      throw new Failure(code, 'Expired or removed DOM handle');
    }
    return slot.value;
  }
  release(id) {
    this.get(id);
    const index = Number(BigInt(id) & 0xffffffffn);
    const slot = this.slots[index];
    slot.value = null;
    // Retire a slot on generation exhaustion; never resurrect an old token.
    if (slot.generation < 0xffffffff) {
      slot.generation++;
      this.free.push(index);
    }
  }
}

export function createDOMAdapter(options = {}) {
  const elements = new Registry(), events = new Registry(), listeners = new Registry();
  const identities = new WeakMap(), elementListeners = new Map();
  const encoder = new TextEncoder(), decoder = new TextDecoder();
  const stats = { calls: 0, commands: 0, writes: 0, callbacks: 0, allocations: 0 };
  let instance, memory, heap = 0;
  const allocations = new Map(), freeBlocks = [];
  const exports = () => instance.exports;
  const callback = (name, ...args) => {
    const fn = exports()[`dom::${name}`] || exports()[name];
    if (typeof fn === 'function') return fn(...args);
    throw new Failure(ERR.CALLBACK, `Missing std/dom callback export: ${name}`);
  };
  const view = () => new DataView(memory.buffer);
  const bytes = () => new Uint8Array(memory.buffer);
  const string = (p, n) => decoder.decode(bytes().subarray(Number(p), Number(p) + Number(n)));
  function malloc(rawSize) {
    const size = Math.max(8, Math.ceil(Number(rawSize) / 8) * 8);
    if (!Number.isSafeInteger(size) || size > 0x7fffffff) throw new RangeError('Allocation size');
    const available = freeBlocks.findIndex(block => block.size >= size);
    let ptr;
    if (available >= 0) {
      const block = freeBlocks[available]; ptr = block.ptr;
      if (block.size === size) freeBlocks.splice(available, 1);
      else { block.ptr += size; block.size -= size; }
    } else {
      if (!heap) heap = Number(exports().__heap_base?.value || 65536);
      ptr = heap; const end = ptr + size;
      if (end > memory.buffer.byteLength) {
        memory.grow(Math.ceil((end - memory.buffer.byteLength) / 65536));
      }
      heap = end;
    }
    allocations.set(ptr, size); stats.allocations++;
    return ptr;
  }
  function free(rawPtr) {
    const ptr = Number(rawPtr), size = allocations.get(ptr);
    if (!ptr || size === undefined) return;
    allocations.delete(ptr); freeBlocks.push({ ptr, size });
    freeBlocks.sort((a, b) => a.ptr - b.ptr);
    for (let i = freeBlocks.length - 1; i > 0; i--) {
      const a = freeBlocks[i - 1], b = freeBlocks[i];
      if (a.ptr + a.size === b.ptr) { a.size += b.size; freeBlocks.splice(i, 1); }
    }
  }
  function result(out, id = 0n, length = 0, numbers = [0, 0, 0, 0]) {
    const v = view(), p = Number(out);
    v.setBigInt64(p, BigInt(id), true); v.setBigInt64(p + 8, BigInt(length), true);
    numbers.forEach((x, i) => v.setFloat64(p + 16 + i * 8, Number(x), true));
  }
  function textResult(out, value, present = true) {
    const data = encoder.encode(value), ptr = malloc(data.length || 1);
    bytes().set(data, ptr); result(out, BigInt(ptr), data.length, [present ? 1 : 0, 0, 0, 0]);
  }
  function handle(node) {
    if (!(node instanceof Element)) throw new Failure(ERR.NOT_FOUND, 'No matching element');
    let id = identities.get(node);
    if (id === undefined) { id = elements.add(node); identities.set(node, id); }
    return id;
  }
  function invalidate(node, subtree = false, kind = 0) {
    const invalidateOne = (target, group) => {
      const id = identities.get(target);
      if (id !== undefined) callback('dom_invalidate_kind', id, BigInt(group));
    };
    invalidateOne(node, kind);
    let ancestor = node.parentElement;
    while (ancestor) { invalidateOne(ancestor, 1); ancestor = ancestor.parentElement; }
    if (subtree) for (const child of node.querySelectorAll('*')) invalidateOne(child, 0);
  }
  function invalidateAttribute(node, name) {
    const kind = { style: 2, class: 3, hidden: 4 }[name.toLowerCase()];
    if (kind) invalidate(node, false, kind);
  }
  function disposeListener(id) {
    id = BigInt.asUintN(64, BigInt(id));
    const item = listeners.get(id);
    item.node.removeEventListener(item.kind, item.handler, item.capture);
    if (item.frame !== null) cancelAnimationFrame(item.frame);
    item.pending = null; item.active = false;
    elementListeners.get(item.node)?.delete(id);
    listeners.release(id);
    callback('dom_release_listener', item.data);
  }
  function releaseTree(node, includeRoot = true) {
    const nodes = [...node.querySelectorAll('*')];
    if (includeRoot) nodes.unshift(node);
    for (const item of nodes) {
      for (const id of [...(elementListeners.get(item) || [])]) disposeListener(id);
      const id = identities.get(item);
      if (id !== undefined) {
        callback('dom_forget', id); elements.release(id); identities.delete(item);
      }
    }
  }
  function ensureSelector(selector) {
    try { document.createDocumentFragment().querySelector(selector); }
    catch (error) { throw new Failure(ERR.INVALID_SELECTOR, error.message); }
  }
  function execute(op, a, b, c, name, value, out) {
    stats.commands++;
    const number = Number(c);
    switch (op) {
      case OPS.FIND: case OPS.FIND_IN: {
        const root = op === OPS.FIND ? document : elements.get(a);
        ensureSelector(name); result(out, handle(root.querySelector(name))); break;
      }
      case OPS.CREATE: result(out, handle(document.createElement(name))); break;
      case OPS.APPEND: {
        const parent = elements.get(a), child = elements.get(b);
        if (child.parentElement) invalidate(child.parentElement, false, 1);
        if (child.parentNode !== parent || parent.lastChild !== child) {
          parent.appendChild(child); stats.writes++;
        }
        invalidate(parent, false, 1); break;
      }
      case OPS.INSERT: {
        const parent = elements.get(a), child = elements.get(b), before = elements.get(c);
        if (before.parentNode !== parent) throw new Failure(ERR.BROWSER, 'Reference is not a child');
        if (child.parentElement) invalidate(child.parentElement, false, 1);
        if (child !== before && child.nextSibling !== before) {
          parent.insertBefore(child, before); stats.writes++;
        }
        invalidate(parent, false, 1); break;
      }
      case OPS.DETACH: {
        const node = elements.get(a);
        if (node.parentElement) invalidate(node.parentElement, false, 1);
        if (node.parentNode) { node.remove(); stats.writes++; }
        break;
      }
      case OPS.REMOVE: {
        const node = elements.get(a);
        if (node.parentElement) invalidate(node.parentElement, false, 1);
        if (node.parentNode) { node.remove(); stats.writes++; }
        releaseTree(node); break;
      }
      case OPS.TEXT_GET: textResult(out, elements.get(a).textContent); break;
      case OPS.TEXT: {
        const node = elements.get(a);
        if (node.textContent !== value) {
          releaseTree(node, false); node.textContent = value; stats.writes++;
          invalidate(node, false, 1);
        }
        break;
      }
      case OPS.VALUE_GET: {
        const node = elements.get(a);
        if (!('value' in node)) throw new Failure(ERR.BROWSER, 'Element has no value property');
        textResult(out, String(node.value)); break;
      }
      case OPS.VALUE: {
        const node = elements.get(a);
        if (!('value' in node)) throw new Failure(ERR.BROWSER, 'Element has no value property');
        if (node.value !== value) { node.value = value; stats.writes++; }
        invalidate(node); break;
      }
      case OPS.ATTR_GET: {
        const val = elements.get(a).getAttribute(name); textResult(out, val ?? '', val !== null); break;
      }
      case OPS.ATTR: {
        const node = elements.get(a);
        if (node.getAttribute(name) !== value) { node.setAttribute(name, value); stats.writes++; }
        invalidateAttribute(node, name); break;
      }
      case OPS.REMOVE_ATTR: {
        const node = elements.get(a); node.removeAttribute(name); invalidateAttribute(node, name); stats.writes++; break;
      }
      case OPS.STYLE: {
        const node = elements.get(a);
        if (node.style.getPropertyValue(name) !== value) {
          node.style.setProperty(name, value); stats.writes++;
        }
        invalidate(node, false, 2); break;
      }
      case OPS.CLASS: {
        const node = elements.get(a), wanted = number !== 0;
        if (node.classList.contains(name) !== wanted) {
          node.classList.toggle(name, wanted); stats.writes++;
        }
        // Toggling one token preserves every other token cache.
        const id = identities.get(node);
        if (id !== undefined) callback('dom_invalidate_kind', id, 5n); break;
      }
      case OPS.CHECKED_GET: {
        const node = elements.get(a);
        if (!('checked' in node)) throw new Failure(ERR.BROWSER, 'Element has no checked property');
        result(out, node.checked ? 1n : 0n); break;
      }
      case OPS.CHECKED: {
        const node = elements.get(a);
        if (!('checked' in node)) throw new Failure(ERR.BROWSER, 'Element has no checked property');
        if (node.checked !== (number !== 0)) { node.checked = number !== 0; stats.writes++; }
        invalidate(node); break;
      }
      case OPS.HIDDEN: {
        const node = elements.get(a);
        if (node.hidden !== (number !== 0)) { node.hidden = number !== 0; stats.writes++; }
        invalidate(node, false, 4); break;
      }
      case OPS.INVALIDATE: invalidate(elements.get(a)); break;
      case OPS.INVALIDATE_TREE: invalidate(elements.get(a), true); break;
      case OPS.BOUNDS: {
        const r = elements.get(a).getBoundingClientRect();
        result(out, 0n, 0, [r.x, r.y, r.width, r.height]); break;
      }
      case OPS.COMPUTED: {
        textResult(out, getComputedStyle(elements.get(a)).getPropertyValue(name)); break;
      }
      case OPS.ON: {
        const node = elements.get(a), capture = Boolean(number & 1), passive = Boolean(number & 2);
        const once = Boolean(number & 4), coalesce = Boolean(number & 8);
        const cancel = Boolean(number & 16);
        if (passive && cancel) throw new Failure(ERR.INVALID_OPTIONS, 'Passive listener cannot cancel');
        if (!name) throw new Failure(ERR.INVALID_OPTIONS, 'Event kind is empty');
        if (value) ensureSelector(value);
        const item = { node, kind: name, data: b, capture, active: true,
          frame: null, pending: null, handler: null };
        const id = listeners.add(item);
        function deliver(event, matched) {
          if (!item.active) return;
          const token = events.add({ event, matched, deferred: coalesce, passive });
          stats.callbacks++;
          try { callback('dom_dispatch', b, token); }
          finally {
            events.release(token);
            if (once && item.active) disposeListener(id);
          }
        }
        item.handler = event => {
          let matched = node;
          if (value) {
            matched = null;
            for (const entry of event.composedPath()) {
              if (entry instanceof Element && entry.matches(value)) { matched = entry; break; }
              if (entry === node) break;
            }
            if (!matched) return;
          }
          if (cancel) event.preventDefault();
          if (event.target instanceof Element) invalidate(event.target);
          if (coalesce) {
            item.pending = { event, matched };
            if (item.frame === null) item.frame = requestAnimationFrame(() => {
              item.frame = null;
              const latest = item.pending; item.pending = null;
              if (latest) deliver(latest.event, latest.matched);
            });
          } else deliver(event, matched);
        };
        if (!elementListeners.has(node)) elementListeners.set(node, new Set());
        elementListeners.get(node).add(id);
        try { node.addEventListener(name, item.handler, { capture, passive }); }
        catch (error) { elementListeners.get(node).delete(id); listeners.release(id); throw error; }
        result(out, id); break;
      }
      case OPS.OFF: disposeListener(a); break;
      case OPS.TARGET: case OPS.MATCHED: {
        const e = events.get(a, ERR.EXPIRED_EVENT);
        const node = op === OPS.TARGET ? e.event.target : e.matched;
        result(out, handle(node instanceof Element ? node : node?.parentElement)); break;
      }
      case OPS.EVENT_VALUE: {
        const e = events.get(a, ERR.EXPIRED_EVENT);
        if (!e.event.target || !('value' in e.event.target)) {
          throw new Failure(ERR.BROWSER, 'Event target has no value property');
        }
        textResult(out, String(e.event.target.value)); break;
      }
      case OPS.KEY: {
        const event = events.get(a, ERR.EXPIRED_EVENT).event;
        if (!('key' in event)) throw new Failure(ERR.BROWSER, 'Event has no key data');
        textResult(out, String(event.key)); break;
      }
      case OPS.POINTER: {
        const event = events.get(a, ERR.EXPIRED_EVENT).event;
        if (!('clientX' in event) || !('clientY' in event) || !('button' in event)) {
          throw new Failure(ERR.BROWSER, 'Event has no pointer data');
        }
        result(out, 0n, 0, [event.clientX, event.clientY, event.button, 0]); break;
      }
      case OPS.PREVENT: case OPS.STOP: {
        const e = events.get(a, ERR.EXPIRED_EVENT);
        if (e.deferred || (op === OPS.PREVENT && e.passive)) {
          throw new Failure(ERR.INVALID_OPTIONS, 'Cannot cancel deferred/passive delivery');
        }
        if (op === OPS.PREVENT) e.event.preventDefault(); else e.event.stopPropagation();
        break;
      }
      case OPS.EMPTY: result(out, elements.get(a).children.length === 0 ? 1n : 0n); break;
      case OPS.CHILDREN: {
        const children = [...elements.get(a).children], ptr = malloc(children.length * 8 || 1);
        children.forEach((child, i) => view().setBigInt64(ptr + i * 8, handle(child), true));
        result(out, BigInt(ptr), children.length); break;
      }
      case OPS.STORAGE_GET: {
        let stored;
        try { stored = globalThis.localStorage.getItem(name); }
        catch (error) { throw new Failure(ERR.BROWSER, `Storage read failed: ${error.message}`); }
        textResult(out, stored ?? ''); break;
      }
      case OPS.STORAGE_SET: {
        try { globalThis.localStorage.setItem(name, value); }
        catch (error) { throw new Failure(ERR.BROWSER, `Storage write failed: ${error.message}`); }
        break;
      }
      case OPS.QUERY_GET: textResult(out, new URL(location.href).searchParams.get(name) ?? ''); break;
      case OPS.QUERY_SET: {
        const url = new URL(location.href);
        if (value === '') url.searchParams.delete(name);
        else url.searchParams.set(name, value);
        history.replaceState(history.state, '', url); break;
      }
      case OPS.PAGE_URL: textResult(out, location.origin + location.pathname); break;
      case OPS.CLIPBOARD_WRITE: {
        if (!navigator.clipboard?.writeText) throw new Failure(ERR.BROWSER, 'Clipboard API unavailable');
        navigator.clipboard.writeText(value).catch(error =>
          (options.onError || console.error)(`Clipboard write failed: ${error.message}`));
        break;
      }
      case OPS.DOWNLOAD_TEXT: {
        const blob = new Blob([value], { type: 'text/plain;charset=utf-8' });
        const url = URL.createObjectURL(blob), anchor = document.createElement('a');
        anchor.href = url; anchor.download = name;
        document.body.appendChild(anchor); anchor.click(); anchor.remove();
        setTimeout(() => URL.revokeObjectURL(url), 1000); break;
      }
      case OPS.PARENT: {
        const node = elements.get(a).parentElement;
        result(out, node ? handle(node) : 0n); break;
      }
      default: throw new Failure(ERR.BROWSER, `Unknown DOM operation ${op}`);
    }
  }
  function call(op, a, b, c, sp, sl, vp, vl, out) {
    stats.calls++;
    result(out);
    try {
      execute(Number(op), BigInt(a), BigInt(b), BigInt(c), string(sp, sl), string(vp, vl), out);
      return 0n;
    } catch (error) {
      options.trace?.(Number(op), error);
      textResult(out, String(error.message || error));
      return BigInt(error.code || ERR.BROWSER);
    }
  }
  // Each packed command is 64 bytes: op,a,b,c, key pointer/length, value pointer/length.
  function runBatch(ptr, count, out) {
    stats.calls++;
    for (let index = 0; index < Number(count); index++) {
      const p = Number(ptr) + index * 64, v = view();
      const args = Array.from({ length: 8 }, (_, i) => v.getBigInt64(p + i * 8, true));
      result(out);
      try {
        execute(Number(args[0]), args[1], args[2], args[3],
          string(args[4], args[5]), string(args[6], args[7]), out);
        // Confirm each applied write without another JS entry.
        callback('dom_commit', BigInt(index));
      } catch (error) {
        options.trace?.(Number(args[0]), error);
        textResult(out, String(error.message || error));
        view().setFloat64(Number(out) + 16, index, true);
        return BigInt(error.code || ERR.BROWSER);
      }
    }
    result(out, 0n, count); return 0n;
  }
  function runMeasurements(ptr, count, out) {
    stats.calls++;
    for (let index = 0; index < Number(count); index++) {
      const p = Number(ptr) + index * 64, v = view();
      const args = Array.from({ length: 8 }, (_, i) => v.getBigInt64(p + i * 8, true));
      try {
        result(out);
        execute(Number(args[0]), args[1], args[2], args[3],
          string(args[4], args[5]), '', out);
        callback('dom_measure_result', BigInt(index), Number(out));
      } catch (error) {
        options.trace?.(Number(args[0]), error);
        textResult(out, String(error.message || error));
        view().setFloat64(Number(out) + 16, index, true);
        return BigInt(error.code || ERR.BROWSER);
      }
    }
    result(out); return 0n;
  }
  const env = {
    edva_dom_call: call, edva_dom_batch: runBatch, edva_dom_measure: runMeasurements,
    edva_dom_free: ptr => free(ptr),
    edva_dom_report: (p, n) => (options.onError || console.error)(string(p, n)),
    malloc, free,
    realloc: (p, n) => {
      const next = malloc(n), old = allocations.get(Number(p)) || 0;
      bytes().copyWithin(next, Number(p), Number(p) + Math.min(old, Number(n)));
      free(p); return next;
    },
    calloc: (n, size) => { const p = malloc(Number(n) * Number(size));
      bytes().fill(0, p, p + Number(n) * Number(size)); return p; },
    memcpy: (d, s, n) => { bytes().copyWithin(Number(d), Number(s), Number(s) + Number(n)); return d; },
    memmove: (d, s, n) => env.memcpy(d, s, n),
    memset: (d, x, n) => { bytes().fill(Number(x) & 255, Number(d), Number(d) + Number(n)); return d; },
    memcmp: (a, b, n) => {
      const data = bytes();
      for (let i = 0; i < Number(n); i++) {
        const diff = data[Number(a) + i] - data[Number(b) + i]; if (diff) return diff;
      }
      return 0;
    },
    write: (fd, p, n) => { (Number(fd) === 2 ? console.error : console.log)(string(p, n)); return n; },
    writev: (fd, pointer, count) => {
      let written = 0n;
      for (let i = 0; i < Number(count); i++) {
        const p = Number(pointer) + i * 16;
        const address = view().getUint32(p, true), length = view().getBigInt64(p + 8, true);
        written += BigInt(env.write(fd, address, length));
      }
      return written;
    },
    exit: code => { throw new Error(`Edva exited with status ${code}`); },
    getpid: () => 1, putchar: c => { console.log(String.fromCharCode(Number(c))); return c; },
    __errno_location: () => 0, __error: () => 0,
    sin: Math.sin, cos: Math.cos, exp2: x => 2 ** Number(x),
    tan: Math.tan, asin: Math.asin, acos: Math.acos,
    atan: Math.atan, atan2: Math.atan2, cbrt: Math.cbrt, pow: Math.pow,
    exp: Math.exp, log: Math.log, log2: Math.log2, log10: Math.log10,
    fmod: (a, b) => a % b, hypot: Math.hypot,
    round: x => x < 0 ? -Math.round(-x) : Math.round(x),
    floor: Math.floor, ceil: Math.ceil, trunc: Math.trunc,
    fabs: Math.abs, sqrt: Math.sqrt
  };
  return {
    imports: { env }, stats,
    attach(wasmInstance) { instance = wasmInstance; memory = instance.exports.memory; return this; },
    memoryStats() { return { liveBlocks: allocations.size, freeBlocks: freeBlocks.length,
      heapEnd: heap, memoryBytes: memory?.buffer.byteLength || 0 }; }
  };
}

export async function instantiateDOM(source, imports = {}, options = {}) {
  const dom = createDOMAdapter(options);
  const merged = { ...imports, env: { ...dom.imports.env, ...imports.env } };
  const resolved = await source;
  const input = resolved instanceof Response ? await resolved.arrayBuffer() : resolved;
  const module = input instanceof WebAssembly.Module
    ? input : await WebAssembly.compile(input);
  const unresolved = WebAssembly.Module.imports(module).flatMap(item => {
    const value = merged[item.module]?.[item.name];
    if (value === undefined || value === null) {
      return [`${item.module}.${item.name} (${item.kind})`];
    }
    if (item.kind === 'function' && typeof value !== 'function') {
      return [`${item.module}.${item.name} (expected callable function)`];
    }
    return [];
  });
  if (unresolved.length) {
    throw new WebAssembly.LinkError(
      `Unresolved WebAssembly imports: ${unresolved.join(', ')}`
    );
  }
  const instance = await WebAssembly.instantiate(module, merged);
  dom.attach(instance);
  return { instance, dom };
}
