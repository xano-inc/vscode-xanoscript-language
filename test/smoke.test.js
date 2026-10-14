// Smoke test for the bundled language server: starts dist/server.js over
// stdio, opens a broken .xs document and expects diagnostics back.
// Run `npm run compile` first (`npm test` does this for you).
const { test } = require("node:test");
const assert = require("node:assert");
const { spawn } = require("node:child_process");
const path = require("node:path");

const SERVER = path.join(__dirname, "..", "dist", "server.js");

function startServer() {
  const proc = spawn(process.execPath, [SERVER, "--stdio"]);
  const handlers = new Map();
  let buffer = "";

  proc.stdout.on("data", (chunk) => {
    buffer += chunk;
    for (;;) {
      const header = buffer.match(/Content-Length: (\d+)\r\n\r\n/);
      if (!header) return;
      const start = header.index + header[0].length;
      const length = Number(header[1]);
      if (buffer.length < start + length) return;
      const message = JSON.parse(buffer.slice(start, start + length));
      buffer = buffer.slice(start + length);
      const key = message.id ?? message.method;
      handlers.get(key)?.(message);
    }
  });

  const send = (message) => {
    const body = JSON.stringify({ jsonrpc: "2.0", ...message });
    proc.stdin.write(`Content-Length: ${Buffer.byteLength(body)}\r\n\r\n${body}`);
  };

  const waitFor = (key) =>
    new Promise((resolve) => handlers.set(key, resolve));

  return { proc, send, waitFor };
}

test("language server answers initialize and reports diagnostics", async (t) => {
  const server = startServer();
  t.after(() => server.proc.kill());

  const initialized = server.waitFor(1);
  server.send({
    id: 1,
    method: "initialize",
    params: { processId: null, rootUri: null, capabilities: {} },
  });
  const { result } = await initialized;
  assert.ok(result.capabilities.completionProvider, "completion");
  assert.ok(result.capabilities.hoverProvider, "hover");
  assert.ok(result.capabilities.definitionProvider, "definition");
  assert.ok(result.capabilities.semanticTokensProvider, "semantic tokens");

  server.send({ method: "initialized", params: {} });

  const diagnostics = server.waitFor("textDocument/publishDiagnostics");
  server.send({
    method: "textDocument/didOpen",
    params: {
      textDocument: {
        uri: "file:///smoke.xs",
        languageId: "xanoscript",
        version: 1,
        text: "query hello verb=GET {\n  stack {\n    var $x {\n  }\n}",
      },
    },
  });
  const { params } = await diagnostics;
  assert.ok(params.diagnostics.length > 0, "expected a syntax error");
});
