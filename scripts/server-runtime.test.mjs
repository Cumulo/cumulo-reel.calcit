import assert from 'node:assert/strict';
import { execFileSync, spawn } from 'node:child_process';
import { once } from 'node:events';
import { copyFile, mkdtemp, readFile, readdir, rm, symlink } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { fileURLToPath, pathToFileURL } from 'node:url';
import test from 'node:test';
import WebSocket from 'ws';

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
    await symlink(join(project, '.calcit'), join(fixture, '.calcit'), 'dir');
    await symlink(join(project, 'node_modules'), join(fixture, 'node_modules'), 'dir');
    run('--entry', 'server', 'test', '--tag', 'protocol', '--require-match', '--summary-only');
    const tests = ['apply-server-patch', 'receive-server-patch!', 'parse-client-action'].flatMap((name) => {
      const response = JSON.parse(run('query', 'def', `cumulo-reel.app.protocol/${name}`, '--raw', '--format', 'json'));
      return response.data.tests.filter((definition) => definition.tags.includes('protocol'));
    });
    const names = new Set(tests.map((definition) => definition.name));
    for (const name of ['restores-initial-edn-snapshot', 'restores-incremental-edn-patch',
      'publishes-valid-edn-snapshot', 'rejects-partially-applied-invalid-patch', 'rejects-invalid-operation-payload',
      'accepts-anonymous-sign-up', 'rejects-extra-and-missing-action-payload']) {
      assert.ok(names.has(name), `Missing shared protocol contract: ${name}`);
    }
    run('edit', 'def', 'cumulo-reel.app.protocol/run-protocol-tests', '--input-format', 'json-ast', '--code',
      JSON.stringify(['defn', 'run-protocol-tests', [], ...tests.map((definition) => definition.code), '&unit']));
    run('edit', 'schema', 'cumulo-reel.app.protocol/run-protocol-tests', '--input-format', 'cirru', '--code',
      "quote $ :: 'Fn $ {} (:args $ []) (:return 'Unit)");
    const output = join(fixture, 'js-out');
    run('--entry', 'server', '--init-fn', 'cumulo-reel.app.protocol/run-protocol-tests',
      '--reload-fn', 'cumulo-reel.app.protocol/run-protocol-tests', '--emit-path', output, 'js');
    const generated = await import(pathToFileURL(join(output, 'cumulo-reel.app.protocol.mjs')).href);
    generated.run_protocol_tests();
  } finally {
    await rm(fixture, { recursive: true, force: true });
  }
});

import {
  each_$x_ as eachClient,
  send_$x_ as send,
  serve_$x_ as serve,
} from '../js-server-out/cumulo-reel.app.server-ws.mjs';

async function waitFor(predicate, label) {
  for (let attempt = 0; attempt < 100; attempt += 1) {
    if (predicate()) return;
    await new Promise((resolve) => setTimeout(resolve, 10));
  }
  assert.fail(`Timed out waiting for ${label}`);
}

test('WebSocket adapter handles text, binary, broadcast, disconnect, and reconnect', async () => {
  const events = [];
  const server = serve(0, (event) => events.push(String(event)));
  const sockets = [];
  try {
    await once(server, 'listening');
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
    const { persist_db_$x_: persist } = await import('../js-server-out/cumulo-reel.app.server.mjs');
    persist();
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
