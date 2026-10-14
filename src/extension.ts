import * as vscode from "vscode";
import { registerServer } from "./registerServer";
import { LanguageClient } from "vscode-languageclient/node";

let client: LanguageClient;

export async function activate(context: vscode.ExtensionContext) {
  client = registerServer(context);
}

export function deactivate() {
  if (!client) return undefined;
  return client.stop();
}
