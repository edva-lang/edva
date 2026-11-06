import assert from 'node:assert/strict';
import fs from 'node:fs';
import { JSDOM } from 'jsdom';
import { pathToFileURL } from 'node:url';

const directory = process.argv[2];
const { createDOMAdapter, instantiateDOM } = await import(
  pathToFileURL(`${directory}/smoke.dom.js`)
);
const browser = new JSDOM('<div id="out"></div><button id="button">Click</button>');
globalThis.document = browser.window.document;
globalThis.Element = browser.window.Element;
const bytes = fs.readFileSync(`${directory}/smoke.wasm`);
const module = new WebAssembly.Module(bytes);
const imports = WebAssembly.Module.imports(module);
const importedNames = new Set(imports.map(item => item.name));
for (const name of ['sin', 'cos', 'exp2', 'log2', 'pow', 'round', 'fma']) {
  assert(importedNames.has(name), `Expected Wasm math import env.${name}`);
}
for (const name of ['sin', 'cos', 'exp2', 'log2', 'pow', 'round']) {
  assert.equal(typeof createDOMAdapter().imports.env[name], 'function');
}
assert.equal(createDOMAdapter().imports.env.fma, undefined);
await assert.rejects(
  () => instantiateDOM(module),
  error => error instanceof WebAssembly.LinkError &&
    /env\.fma \(function\)/.test(error.message)
);
await assert.rejects(
  () => instantiateDOM(module, { env: { fma: 0 } }),
  error => error instanceof WebAssembly.LinkError &&
    /env\.fma \(expected callable function\)/.test(error.message)
);
const { instance } = await instantiateDOM(
  bytes,
  { env: { fma: (x, y, z) => x * y + z } }
);
instance.exports.main(0, 0);
instance.exports.run_smoke();
assert.equal(document.querySelector('#out').textContent, 'Wasm DOM ready');
document.querySelector('#button').click();
assert.equal(instance.exports.click_count(), 1n);
assert(Math.abs(instance.exports.sin_value(0.5) - Math.sin(0.5)) < 1e-15);
assert(Math.abs(instance.exports.cos_value(0.5) - Math.cos(0.5)) < 1e-15);
assert.equal(instance.exports.exp2_value(3), 8);
assert.equal(instance.exports.log2_value(8), 3);
assert.equal(instance.exports.pow_value(2, 3), 8);
assert.equal(instance.exports.round_value(0.5), 1);
assert.equal(instance.exports.round_value(-0.5), -1);
assert(Object.is(instance.exports.round_value(-0.1), -0));
assert.equal(instance.exports.fma_value(2, 3, 4), 10);
browser.window.close();
console.log('PASS Wasm std/dom bridge and math imports smoke');
