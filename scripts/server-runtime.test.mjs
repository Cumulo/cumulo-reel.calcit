import assert from 'node:assert/strict';
import { spawn } from 'node:child_process';
import { once } from 'node:events';
import { mkdtemp, readFile, readdir, rm } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import test from 'node:test';
import WebSocket from 'ws';

import {
  each_$x_ as eachClient,
  send_$x_ as send,
  serve_$x_ as serve,
} from '../js-out/cumulo-reel.app.server-ws.mjs';

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
  const adapterUrl = new URL('../js-out/cumulo-reel.app.server-ws.mjs', import.meta.url).href;
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
    const { persist_db_$x_: persist } = await import('../js-out/cumulo-reel.app.server.mjs');
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
