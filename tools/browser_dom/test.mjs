import assert from 'node:assert/strict';
import fs from 'node:fs';
import { JSDOM } from 'jsdom';
import { pathToFileURL } from 'node:url';
const directory = process.argv[2];
const { instantiateDOM } = await import(pathToFileURL(`${directory}/core.dom.js`));
assert.equal(fs.statSync(`${directory}/core.dom.js`).mode & 0o777,0o644);
const browser = new JSDOM('<div id="out"></div><input id="input"><input id="check" type="checkbox"><button id="button">Click</button>', { pretendToBeVisual: true });
for (const key of ['document', 'Element', 'getComputedStyle', 'requestAnimationFrame', 'cancelAnimationFrame']) {
  globalThis[key] = typeof browser.window[key] === 'function' && key !== 'Element'
    ? browser.window[key].bind(browser.window) : browser.window[key];
}
let instance;
const failures = [];
const decode = (p,n) => new TextDecoder().decode(new Uint8Array(instance.exports.memory.buffer,Number(p),Number(n)));
const loaded = await instantiateDOM(fs.readFileSync(`${directory}/core.wasm`), {env:{dom_test_log:(p,n)=>failures.push(decode(p,n))}}, {onError:message=>failures.push(message)});
instance = loaded.instance;
instance.exports.main(0, 0);
const result = instance.exports.run_dom_tests();
console.log('result', result, failures);
assert.equal(result, 0n);
assert.equal(failures.length,0);
document.querySelector('#button').click();
assert.equal(instance.exports.get_clicks(), 3n);
assert.equal(document.querySelector('#button').getAttribute('data-click'),'3');
assert.equal(instance.exports.expired_code(),7n);
document.querySelector('#input').value = 'user edit';
document.querySelector('#check').checked = false;
instance.exports.restore_form();
assert.equal(document.querySelector('#input').value,'hello');
assert.equal(document.querySelector('#check').checked,true);
console.log('PASS', loaded.dom.stats, loaded.dom.memoryStats());

const before = {...loaded.dom.stats};
const started = performance.now();
instance.exports.cache_bench(10000n);
const elapsed = performance.now()-started;
assert.equal(loaded.dom.stats.calls-before.calls,7);
assert.equal(loaded.dom.stats.commands-before.commands,7);
console.log(`PASS unchanged writes: 60000 setters, 10000 empty flushes, 7 setup bridge calls (${elapsed.toFixed(1)}ms)`);

// Keyed rows retain identity and use an LIS to avoid redundant moves.
document.body.innerHTML = '<ul id="list"></ul>';
const parent = document.querySelector('#list');
let originals, recoveryNodes, originalInsert, attemptedMoves=0;
const phases = [];
const listModule = await instantiateDOM(fs.readFileSync(`${directory}/list.wasm`), {
  env: { dom_test_failure: (...details) => console.error('List failure',details), dom_test_phase: stage => {
    const children = [...parent.children];
    phases.push(Number(stage));
    switch (Number(stage)) {
      case 1: originals = children; assert.equal(parent.textContent,'onetwothree'); break;
      case 2:
        assert.equal(parent.textContent,'THREEONETWO');
        [originals[2],originals[0],originals[1]].forEach((node,i)=>assert.equal(children[i],node)); break;
      case 3: assert.equal(parent.textContent,'twofour'); assert.equal(children[0],originals[1]); break;
      case 4: assert.equal(parent.textContent,'twofour'); break;
      case 5: case 6: assert.equal(children.length,0); break;
      case 7:
        recoveryNodes = children; originalInsert = parent.insertBefore;
        parent.insertBefore = function (...args) {
          if (++attemptedMoves === 2) throw new Error('Injected second move failure');
          return originalInsert.apply(this,args);
        };
        break;
      case 8:
        parent.insertBefore = originalInsert;
        assert.equal(attemptedMoves,2);
        assert(children.some((node,i)=>node !== recoveryNodes[i])); // successful first move stays applied
        break;
      case 9:
        [recoveryNodes[2],recoveryNodes[1],recoveryNodes[0]].forEach((node,i)=>assert.equal(children[i],node));
        assert.equal(parent.textContent,'THREETWOONE');
        break;
      default: assert.fail(`Unknown phase ${stage}`);
    }
  } }
});
listModule.instance.exports.main(0,0);
try { assert.equal(listModule.instance.exports.list_run(),0n); }
catch (error) { console.error({phases,stats:listModule.dom.stats}); throw error; }
assert.deepEqual(phases,[1,2,3,4,5,6,7,8,9]);
console.log('PASS keyed lists', listModule.dom.stats);
document.body.innerHTML = '<div id="events"><button id="event-button" data-row="target"><span id="inner"></span></button></div>';
const eventModule = await instantiateDOM(fs.readFileSync(`${directory}/events.wasm`));
eventModule.instance.exports.main(0,0);
const ex = eventModule.instance.exports;
assert.equal(ex.setup_events(),0n);
const button = document.querySelector('#event-button');
const inner = document.querySelector('#inner');
inner.click(); inner.click();
assert.equal(ex.event_count(0n),2n);
assert.equal(ex.event_count(1n),2n);
assert.equal(ex.event_count(2n),1n);
button.dispatchEvent(new browser.window.Event('off'));
assert.equal(ex.event_count(0n),2n);
const submit = new browser.window.Event('submit',{cancelable:true});
button.dispatchEvent(submit);
assert.equal(submit.defaultPrevented,true);
button.dispatchEvent(new browser.window.Event('fail'));
assert.equal(ex.event_count(4n),1n);
for (const key of ['a','b','c']) {
  button.dispatchEvent(new browser.window.KeyboardEvent('keydown',{key,cancelable:true}));
}
assert.equal(ex.event_count(3n),0n);
await new Promise(resolve => setTimeout(resolve,40));
assert.equal(ex.event_count(3n),1n);
assert.equal(ex.event_count(4n),2n); // deferred prevent_default reports an error ram
const keyPointer = ex.final_key();
const memory = new DataView(ex.memory.buffer);
const keyData = memory.getUint32(keyPointer+8,true);
const keyLength = Number(memory.getBigInt64(keyPointer,true));
assert.equal(new TextDecoder().decode(new Uint8Array(ex.memory.buffer,keyData,keyLength)),'c');
button.dispatchEvent(new browser.window.KeyboardEvent('keydown',{key:'discard'}));
ex.remove_event_root();
button.click();
await new Promise(resolve => setTimeout(resolve,40));
assert.equal(ex.event_count(3n),1n);
assert.equal(ex.event_count(0n),3n);
console.log('PASS events',eventModule.dom.stats);
for (const fixture of ['411_static_arity_overloads','412_generic_callback_layouts','413_generic_record_ram_fields']) {
  let module, output = '';
  const loadedCompiler = await instantiateDOM(fs.readFileSync(`${directory}/${fixture}.wasm`), {
    env: { write: (fd, pointer, length) => {
      const value = new TextDecoder().decode(new Uint8Array(module.exports.memory.buffer,Number(pointer),Number(length)));
      if (Number(fd) === 1) output += value;
      else throw new Error(value);
      return length;
    }, writev: (fd, pointer, count) => {
      let written = 0n;
      for (let i=0; i<Number(count); i++) {
        const memory = new DataView(module.exports.memory.buffer), p=Number(pointer)+i*16;
        const data = memory.getUint32(p,true), length=memory.getBigInt64(p+8,true);
        const text = new TextDecoder().decode(new Uint8Array(memory.buffer,data,Number(length)));
        assert.equal(Number(fd),1); output += text; written += length;
      }
      return written;
    } }
  });
  module = loadedCompiler.instance;
  module.exports.main(0,0);
  assert.equal(output,fs.readFileSync(`tests/pass/${fixture}.expected`,'utf8'));
}
console.log('PASS compiler regressions on Wasm');
browser.window.close();
