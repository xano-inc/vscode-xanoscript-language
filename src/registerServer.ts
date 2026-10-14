import * as vscode from "vscode";
import {
  LanguageClient,
  LanguageClientOptions,
  ServerOptions,
  TransportKind,
} from "vscode-languageclient/node";

/**
 * Registers the language server for XanoScript
 * @param context
 * @returns
 */
export function registerServer(
  context: vscode.ExtensionContext,
): LanguageClient {
  // Path to the compiled server file
  const serverModule = vscode.Uri.joinPath(
    context.extensionUri,
    "dist",
    "server.js",
  );
  // Define how the server runs
  const serverOptions: ServerOptions = {
    run: { module: serverModule.fsPath, transport: TransportKind.ipc },
    debug: {
      module: serverModule.fsPath,
      transport: TransportKind.ipc,
      options: { execArgv: ["--nolazy", "--inspect=0"] },
    },
  };

  // Define which files the client handles
  const clientOptions: LanguageClientOptions = {
    documentSelector: [{ language: "xanoscript" }],
    synchronize: {
      fileEvents: [vscode.workspace.createFileSystemWatcher("**/*.xs")],
    },
  };

  // Initialize and start the client (which launches the server)
  const client = new LanguageClient(
    "xanoscriptLanguageServer",
    "XanoScript Language Server",
    serverOptions,
    clientOptions,
  );

  client.start();

  return client;
}
