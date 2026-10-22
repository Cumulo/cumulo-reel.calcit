import assert from 'node:assert/strict';
import { execFileSync, spawn } from 'node:child_process';
import { once } from 'node:events';
import { copyFile, mkdir, mkdtemp, readFile, readdir, rm, symlink } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { fileURLToPath } from 'node:url';
import test from 'node:test';
import WebSocket from 'ws';

const projectRoot = fileURLToPath(new URL('../', import.meta.url));
const sharedTests = join(projectRoot, '.calcit/calcit-tests');
const replayDefinitions = (snapshot, ...filters) => execFileSync(process.execPath, [
  join(sharedTests, 'scripts/run-core-tests.mjs'), '--snapshot', snapshot,
  '--entry', 'server', '--backend', 'native,js',
  '--exclusions', join(sharedTests, 'scripts/core-tests-exclusions.cirru'),
  '--support-matrix', join(sharedTests, 'docs/installation/wasm-support.md'), ...filters,
], { cwd: projectRoot, stdio: 'inherit', timeout: 120000 });

test('component Map reads preserve host rejection, cursor identity and nil-state fallback', async () => {
  const c = await import('../js-out/calcit.core.mjs');
  const login = await import('../js-out/cumulo-reel.app.comp.login.mjs');
  const container = await import('../js-out/cumulo-reel.app.comp.container.mjs');
  const protocol = await import('../js-out/cumulo-reel.app.protocol.mjs');
  const invalidMaps = [null, undefined, false, 7, 'invalid', c.parse_cirru_edn('[]'), {},
    c.parse_cirru_edn("%{} 'Foreign (:value |text)")];
  for (const value of invalidMaps) assert.throws(() => login.comp_login(value), /map|Does not support `&get` on this type/i);

  const cursor = c.parse_cirru_edn('[] :login |panel 7');
  const states = c._$n__$M_(c.turn_tag('cursor'), cursor, c.turn_tag('extra'), 'preserved');
  const inputs = [];
  const visit = node => {
    const value = node.get(1);
    if (node.tag.value === 'component') {
      const tree = value.get('tree');
      if (tree.tag.value === 'some') visit(tree.get(1));
      return;
    }
    assert.equal(node.tag.value, 'element');
    if (value.get('name').value === 'input') inputs.push(value);
    for (const pair of c.listToArray(value.get('children'))) {
      const child = pair.get('node');
      if (child.tag.value === 'some') visit(child.get(1));
    }
  };
  visit(c.option_$o_unwrap(login.comp_login(states).get('tree')));
  assert.equal(inputs.length, 2);
  const inputValues = () => inputs.map(input => c.pairs_map(input.get('attrs')).get(c.turn_tag('value')));
  assert.deepEqual(inputValues(), ['', '']);
  const data = c._$n__$M_(c.turn_tag('username'), 'seed-user', c.turn_tag('password'), 'seed-password');
  inputs.length = 0;
  visit(c.option_$o_unwrap(login.comp_login(states.assoc(c.turn_tag('data'), data)).get('tree')));
  assert.equal(inputs.length, 2);
  assert.deepEqual(inputValues(), ['seed-user', 'seed-password']);
  for (const [index, field] of ['username', 'password'].entries()) {
    const handler = inputs[index].get('event').get(c.turn_tag('input'));
    const calls = [];
    const dispatch = (...args) => { calls.push(args); };
    for (const value of invalidMaps) assert.throws(() => handler(value, dispatch), /map|Does not support `&get` on this type/i);
    for (const [value, type] of [[null, 'nil'], [false, 'bool'], [0, 'number']]) {
      assert.throws(() => handler(c._$n__$M_(c.turn_tag('value'), value), dispatch),
        error => error.message === `decode-map-as failed at $: expected string, got ${type}`);
    }
    assert.throws(() => handler(c._$n__$M_(), dispatch),
      error => error.message === 'decode-map-as failed at $: expected string, got nil');
    assert.equal(calls.length, 0, 'invalid events must not dispatch');
    for (const text of ['', '中文']) {
      assert.equal(handler(c._$n__$M_(c.turn_tag('value'), text), dispatch), undefined);
      const [actualCursor, state] = calls.at(-1);
      assert.equal(actualCursor, cursor, 'keep the original Tag/String/Number cursor object');
      assert.equal(state.get(field), text);
    }
    const failure = new Error('dispatch failed');
    assert.throws(() => handler(c.parse_cirru_edn('{} (:value |valid)'), () => { throw failure; }), error => error === failure);
  }
  assert.equal(states.get(c.turn_tag('extra')), 'preserved');

  const legacyState = c.parse_cirru_edn("%{} 'LegacyLogin (:username |Ada) (:password |legacy)");
  for (const [source, expected] of [
    [c._$n__$M_(), ['', '']],
    [c._$n__$M_(c.turn_tag('data'), null), ['', '']],
    [c._$n__$M_(c.turn_tag('data'), data), ['seed-user', 'seed-password']],
    [c._$n__$M_(c.turn_tag('data'), legacyState), ['Ada', 'legacy']],
  ]) {
    inputs.length = 0;
    visit(c.option_$o_unwrap(login.comp_login(source).get('tree')));
    assert.deepEqual(inputValues(), expected);
  }
  for (const [value, type] of [[undefined, 'unit'], [false, 'bool'], [0, 'number'], ['', 'string'], [c.parse_cirru_edn('[]'), 'list']]) {
    assert.throws(() => login.comp_login(c._$n__$M_(c.turn_tag('data'), value)),
      error => error.message === `decode-map-as failed at $: expected map for struct :LoginState, got ${type}`);
  }
  assert.throws(() => login.comp_login(c._$n__$M_(c.turn_tag('data'), c._$n__$M_())),
    error => error.message === 'decode-map-as failed at $: struct :LoginState is missing required field :password');

  const absentCursor = Symbol('absent-cursor');
  for (const value of [absentCursor, null, false, 0, '', cursor, c._$n__$M_()]) {
    const source = value === absentCursor ? c._$n__$M_() : c._$n__$M_(c.turn_tag('cursor'), value);
    inputs.length = 0;
    visit(c.option_$o_unwrap(login.comp_login(source).get('tree')));
    for (const [index, field] of ['username', 'password'].entries()) {
      const calls = [];
      const handler = inputs[index].get('event').get(c.turn_tag('input'));
      assert.throws(() => handler(c._$n__$M_(), (...args) => { calls.push(args); }),
        error => error.message === 'decode-map-as failed at $: expected string, got nil');
      assert.equal(calls.length, 0, 'missing text must not dispatch on either cursor branch');
      assert.equal(handler(c.parse_cirru_edn('{} (:value |typed)'), (...args) => { calls.push(args); }), undefined);
      assert.equal(calls.length, 1);
      if (value === absentCursor) {
        assert.deepEqual(c.to_js_data(calls[0][0]), [], 'an absent cursor dispatches at the root cursor');
      } else {
        assert.equal(calls[0][0], value, 'keep a present cursor value as given');
      }
      assert.equal(calls[0][1].get(field), 'typed');
      const failure = new Error('cursor dispatch failed');
      assert.throws(() => handler(c.parse_cirru_edn('{} (:value |typed)'), () => { throw failure; }), error => error === failure);
    }
  }

  const raw = c.parse_cirru_edn(`{}
  :session $ {}
    :id 1
    :user-id nil
    :nickname nil
    :router $ {} (:name :home) (:title |Home) (:router nil) (:data nil)
    :messages $ {}
  :router $ {} (:name :home) (:title |Home) (:router nil) (:data nil)
  :logged-in? false
  :color |red
  :count 0
  :reel-length 0
  :name nil
  :user nil`);
  const decoded = protocol.decode_client_store(raw);
  assert.equal(decoded.tag.value, 'ok');
  const store = c._PCT_some(decoded.get(1));
  for (const state of [null, c._$n__$M_()]) assert.doesNotThrow(() => container.comp_container(state, store));
  // Unit/undefined is not Nil/null and must not activate the existing nil fallback.
  for (const state of invalidMaps.slice(1)) assert.throws(() => container.comp_container(state, store), /map|Does not support `&get` on this type/i);
  assert.doesNotThrow(() => container.comp_container(7, c._PCT_none()), 'the offline branch does not inspect states');
});

test('protocol definition tests replay on native and fresh generated JS', async () => {
  const project = fileURLToPath(new URL('../', import.meta.url));
  const fixture = await mkdtemp(join(tmpdir(), 'cumulo-reel-protocol-'));
  const snapshot = join(fixture, 'calcit.cirru');
  const binary = process.env.CALCIT_BIN ?? 'calcit';
  const run = (...args) => execFileSync(binary, [snapshot, ...args], {
    cwd: project, encoding: 'utf8', timeout: 60000, stdio: 'pipe',
  });
  try {
    await copyFile(join(project, 'calcit.cirru'), snapshot);
    await copyFile(join(project, 'deps.cirru'), join(fixture, 'deps.cirru'));
    await symlink(join(project, '.calcit'), join(fixture, '.calcit'), 'dir');
    await symlink(join(project, 'node_modules'), join(fixture, 'node_modules'), 'dir');
    const defaultOutput = join(fixture, 'default-entry-out');
    run('--emit-path', defaultOutput);
    assert.ok((await readFile(join(defaultOutput, 'cumulo-reel.app.client.mjs'))).length > 0,
      'the default command must compile the browser entry without requiring a js subcommand');
    const targets = ['apply-server-patch', 'receive-server-patch!', 'parse-client-action', 'decode-open', 'decode-field', 'decode-messages']
      .map((name) => `cumulo-reel.app.protocol/${name}`)
      .concat('cumulo-reel.app.storage/decode-database');
    const tests = targets.flatMap((target) => {
      const response = JSON.parse(run('query', 'def', target, '--format', 'json'));
      return response.data.tests.filter((definition) => definition.tags.includes('protocol'));
    });
    const names = new Set(tests.map((definition) => definition.name));
    for (const name of ['restores-initial-edn-snapshot', 'restores-incremental-edn-patch',
      'publishes-valid-edn-snapshot', 'rejects-partially-applied-invalid-patch', 'rejects-invalid-operation-payload',
      'accepts-anonymous-sign-up', 'rejects-extra-and-missing-action-payload',
      'preserves-opaque-router-data', 'preserves-number-result-type', 'preserves-typed-map-value',
      'preserves-nullable-map-value', 'rejects-missing-field', 'keeps-decoder-error-context',
      'preserves-message-option-consumer-contract',
      'preserves-database-option-consumer-errors',
      'restores-legacy-user-database', 'rejects-invalid-stored-user-avatar']) {
      assert.ok(names.has(name), `Missing shared protocol contract: ${name}`);
    }
    replayDefinitions(snapshot, '--tag', 'protocol');

    // The same helper must reject a decoder whose input contradicts the Map value type.
    const probe = (value) => ['defn', 'field-decoder-type-probe', [],
      ['decode-field', ['{}', [':name', value]], ':name', 'string-only-field-decoder'], '&unit'];
    const apply = operations => {
      const args = ['edit', 'transaction', '--code', JSON.stringify(operations), '--format', 'json'];
      const preview = JSON.parse(run(...args, '--dry-run'));
      run(...args, '--expect-revision', preview.scoped_revision);
    };
    apply([
      ['edit', 'def', 'cumulo-reel.app.protocol/string-only-field-decoder', '--input-format', 'json-ast', '--code',
        JSON.stringify(['defn', 'string-only-field-decoder', ['value'], ['Result', ':ok', 'value']])],
      ['edit', 'schema', 'cumulo-reel.app.protocol/string-only-field-decoder', '--input-format', 'cirru', '--code',
        "quote $ :: 'Fn $ {} (:args $ [] 'String) (:return $ :: 'Result 'String 'String)"],
      ['edit', 'def', 'cumulo-reel.app.protocol/field-decoder-type-probe', '--input-format', 'json-ast', '--code', JSON.stringify(probe('|Ada'))],
      ['edit', 'schema', 'cumulo-reel.app.protocol/field-decoder-type-probe', '--input-format', 'cirru', '--code',
        "quote $ :: 'Fn $ {} (:args $ []) (:return 'Unit)"],
    ]);
    const checkProbe = () => run('--entry', 'server', '--init-fn', 'cumulo-reel.app.protocol/field-decoder-type-probe',
      '--reload-fn', 'cumulo-reel.app.protocol/field-decoder-type-probe', '--check-only');
    checkProbe();
    apply([['edit', 'def', 'cumulo-reel.app.protocol/field-decoder-type-probe', '--overwrite',
      '--input-format', 'json-ast', '--code', JSON.stringify(probe('41'))]]);
    assert.throws(checkProbe, (error) => {
      const diagnostic = `${error.stdout ?? ''}\n${error.stderr ?? ''}`;
      assert.match(diagnostic, /decode-field/);
      assert.match(diagnostic, /string/i);
      assert.match(diagnostic, /number/i);
      return true;
    });
  } finally {
    await rm(fixture, { recursive: true, force: true });
  }
});


test('partition chains replay original atomicity contracts on fresh generated JS', async () => {
  const project = fileURLToPath(new URL('../', import.meta.url));
  const fixtureRoot = join(project, '.calcit');
  await mkdir(fixtureRoot, { recursive: true });
  const fixture = await mkdtemp(join(fixtureRoot, 'partition-apply-'));
  const snapshot = join(fixture, 'calcit.cirru');
  const binary = process.env.CALCIT_BIN ?? 'calcit';
  const run = (...args) => execFileSync(binary, [snapshot, ...args], {
    cwd: project, encoding: 'utf8', timeout: 60000, stdio: 'pipe',
  });
  const original = await readFile(join(project, 'calcit.cirru'));
  try {
    await copyFile(join(project, 'calcit.cirru'), snapshot);
    await copyFile(join(project, 'deps.cirru'), join(fixture, 'deps.cirru'));
    await symlink(join(project, '.calcit'), join(fixture, '.calcit'), 'dir');
    await symlink(join(project, 'node_modules'), join(fixture, 'node_modules'), 'dir');
    run('docs', 'agents', '--contract');
    const response = JSON.parse(run('query', 'def', 'cumulo-reel.partition/apply-partition-deltas', '--format', 'json'));
    const tests = response.data.tests.filter(definition => definition.tags.includes('partition'));
    for (const name of ['atomic-chain-application', 'late-failure-and-final-only-decode']) {
      assert.ok(tests.some(definition => definition.name === name), `Missing partition contract: ${name}`);
    }
    replayDefinitions(snapshot, '--target', 'cumulo-reel.partition/apply-partition-deltas', '--tag', 'partition');

    // Replay the attached display and wire-boundary contracts without changing their ASTs.
    const memberTargets = ['member-display-name', 'decode-member-names']
      .map(name => `cumulo-reel.app.comp.profile/${name}`);
    const memberTests = memberTargets.flatMap(target =>
      JSON.parse(run('query', 'def', target, '--format', 'json')).data.tests);
    assert.equal(memberTests.length, 7, 'Expected every member display and wire-boundary case');
    replayDefinitions(snapshot, ...memberTargets.flatMap(target => ['--target', target]));
  } finally {
    await rm(fixture, { recursive: true, force: true });
    assert.deepEqual(await readFile(join(project, 'calcit.cirru')), original);
  }
});

import {
  each_$x_ as eachClient,
  send_$x_ as send,
  serve_$x_ as serve,
  server_options as serverOptions,
} from '../js-server-out/cumulo-reel.app.server-ws.mjs';
import * as serverCore from '../js-server-out/calcit.core.mjs';

async function waitFor(predicate, label) {
  for (let attempt = 0; attempt < 100; attempt += 1) {
    if (predicate()) return;
    await new Promise((resolve) => setTimeout(resolve, 10));
  }
  assert.fail(`Timed out waiting for ${label}`);
}

test('WebSocket adapter handles text, binary, broadcast, disconnect, and reconnect', async (context) => {
  assert.deepEqual(serverOptions(0, serverCore._PCT_none()), { port: 0 },
    'an omitted bind address must preserve the original host-default options');
  assert.deepEqual(serverOptions(0, serverCore._PCT_some('127.0.0.1')), { port: 0, host: '127.0.0.1' });
  assert.throws(() => serverOptions(0, serverCore._PCT_some('')),
    error => error.message === 'WSS_BIND_ADDRESS must not be empty');
  const previousBind = process.env.WSS_BIND_ADDRESS;
  context.after(() => {
    if (previousBind === undefined) delete process.env.WSS_BIND_ADDRESS;
    else process.env.WSS_BIND_ADDRESS = previousBind;
  });
  if (process.env.CI === 'true') {
    // Exercise the default listener only on the isolated CI runner, never on a developer machine.
    delete process.env.WSS_BIND_ADDRESS;
    const defaultServer = serve(0, () => {});
    try {
      await once(defaultServer, 'listening');
      assert.equal(defaultServer.options.host, null, 'serve must retain ws port-only default options');
      assert.ok(['::', '0.0.0.0'].includes(defaultServer.address().address),
        'an absent environment variable must keep the original host-default listener');
      console.info('CI-only absent WSS_BIND_ADDRESS integration passed');
    } finally {
      await new Promise(resolve => defaultServer.close(resolve));
    }
  } else {
    console.info('Default wildcard listener integration is CI-only; local configuration assertions ran above');
  }
  process.env.WSS_BIND_ADDRESS = '127.0.0.1';
  const events = [];
  const server = serve(0, (event) => events.push(String(event)));
  const sockets = [];
  try {
    await once(server, 'listening');
    assert.equal(server.address().address, '127.0.0.1', 'the actual socket must bind only to loopback');
    const url = `ws://127.0.0.1:${server.address().port}`;
    const first = new WebSocket(url);
    sockets.push(first);
    const received = [];
    first.on('message', (value) => received.push(String(value)));
    await once(first, 'open');
    await waitFor(() => events.some((event) => event.includes(':connect 1)')), 'first connection');

    first.send('hello');
    await waitFor(() => events.some((event) => event.includes(':message 1 |hello)')), 'text message');
    first.send(Buffer.from([1, 2, 3]));
    await waitFor(() => events.some((event) => event.includes(':blob 1)')), 'binary message');

    const active = [];
    eachClient((sid) => {
      active.push(sid);
      send(sid, 'broadcast');
    });
    assert.deepEqual(active, [1]);
    await waitFor(() => received.includes('broadcast'), 'broadcast');

    first.close();
    await once(first, 'close');
    await waitFor(() => events.some((event) => event.includes(':disconnect 1)')), 'first disconnect');
    const afterClose = [];
    eachClient((sid) => afterClose.push(sid));
    assert.deepEqual(afterClose, []);

    const second = new WebSocket(url);
    sockets.push(second);
    await once(second, 'open');
    await waitFor(() => events.some((event) => event.includes(':connect 2)')), 'reconnection');
    second.close();
    await once(second, 'close');
    await waitFor(() => events.some((event) => event.includes(':disconnect 2)')), 'second disconnect');
    assert.equal(events.filter((event) => event.includes(':disconnect 1)')).length, 1);
    assert.equal(events.filter((event) => event.includes(':disconnect 2)')).length, 1);
  } finally {
    for (const socket of sockets) socket.terminate();
    await new Promise((resolve) => server.close(resolve));
  }
});

test('WebSocket bind failure exits with a nonzero status', async () => {
  const adapterUrl = new URL('../js-server-out/cumulo-reel.app.server-ws.mjs', import.meta.url).href;
  const source = `
    import { once } from 'node:events';
    import { serve_$x_ } from ${JSON.stringify(adapterUrl)};
    const first = serve_$x_(0, () => {});
    await once(first, 'listening');
    serve_$x_(first.address().port, () => {});
  `;
  const result = await new Promise((resolve, reject) => {
    const child = spawn(process.execPath, ['--input-type=module', '-e', source], {
      stdio: ['ignore', 'ignore', 'pipe'],
      env: { ...process.env, WSS_BIND_ADDRESS: '127.0.0.1' },
    });
    let stderr = '';
    child.stderr.setEncoding('utf8');
    child.stderr.on('data', (chunk) => { stderr += chunk; });
    child.on('error', reject);
    const timeout = setTimeout(() => child.kill('SIGKILL'), 5000);
    child.on('close', (code, signal) => {
      clearTimeout(timeout);
      resolve({ code, signal, stderr });
    });
  });
  assert.equal(result.signal, null, result.stderr);
  assert.equal(result.code, 1, result.stderr);
  assert.match(result.stderr, /WebSocket-server-error:/);
});

test('server persistence writes storage and a dated backup', async () => {
  const originalCwd = process.cwd();
  const temporaryDir = await mkdtemp(join(tmpdir(), 'cumulo-reel-persist-'));
  try {
    process.chdir(temporaryDir);
    const { persist_db_$x_: persist, dispatch_$x_: dispatch } = await import('../js-server-out/cumulo-reel.app.server.mjs');
    const { parse_cirru_edn: parse } = await import('@calcit/procs');
    assert.equal(dispatch(parse(':: :session/connect'), 71), undefined, 'state-changing dispatch must return Unit, not the new ReelState');
    assert.equal(dispatch(parse(':: :effect/persist'), 71), undefined, 'the persistence branch must also return Unit');
    assert.equal(persist(), undefined);
    const storage = await readFile('storage.cirru', 'utf8');
    assert.match(storage, /Database/);
    const months = await readdir('backups');
    assert.equal(months.length, 1);
    const files = await readdir(join('backups', months[0]));
    assert.equal(files.length, 1);
    assert.equal(await readFile(join('backups', months[0], files[0]), 'utf8'), storage);
  } finally {
    process.chdir(originalCwd);
    await rm(temporaryDir, { recursive: true, force: true });
  }
});

test('server entry unwraps the configured port and persists on SIGINT', async () => {
  const temporaryDir = await mkdtemp(join(tmpdir(), 'cumulo-reel-entry-'));
  const entryUrl = new URL('../js-server-out/cumulo-reel.app.server.mjs', import.meta.url).href;
  const child = spawn(process.execPath, ['--input-type=module', '-e',
    `const app = await import(${JSON.stringify(entryUrl)}); app.main_$x_(); process.stdout.write('server-entry-ready\\n');`], {
    cwd: temporaryDir,
    env: { ...process.env, mode: 'release', port: '0', WSS_BIND_ADDRESS: '127.0.0.1' },
    stdio: ['ignore', 'pipe', 'pipe'],
  });
  let stdout = '';
  let stderr = '';
  child.stdout.setEncoding('utf8');
  child.stderr.setEncoding('utf8');
  child.stdout.on('data', (chunk) => { stdout += chunk; });
  child.stderr.on('data', (chunk) => { stderr += chunk; });
  const closed = once(child, 'close');
  const timeout = setTimeout(() => child.kill('SIGKILL'), 5000);
  try {
    await waitFor(() => stdout.includes('Server started on port:0'), 'server entry startup');
    // The startup log precedes SIGINT handler registration; wait for main! to return.
    await waitFor(() => stdout.includes('server-entry-ready\n'), 'server entry signal handler readiness');
    child.kill('SIGINT');
    const [code, signal] = await closed;
    assert.equal(signal, null, stderr);
    assert.equal(code, 0, stderr);
    assert.match(await readFile(join(temporaryDir, 'storage.cirru'), 'utf8'), /Database/);
    assert.doesNotMatch(stderr, /expected 0 params|ERR_INVALID_ARG_VALUE/);
  } finally {
    clearTimeout(timeout);
    if (child.exitCode === null && child.signalCode === null) child.kill('SIGKILL');
    await closed;
    await rm(temporaryDir, { recursive: true, force: true });
  }
});
