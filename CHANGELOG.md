# Changelog

All notable changes to the XanoScript Language Server extension are documented in this file.

## [Unreleased]

- The language server now comes from the `@xano/xanoscript-language-server` npm package, upgraded to 12.20.0
- Policy documents: parsing, validation, completion and hover, with checks against Xano's policy check catalogue, an `applies_when` warning, and policy checks for `uses` and `api.call` auth blocks
- MCP: grammar for prompts, resources, tool metadata and elicitation (MCP 2026-07-28), plus the `mcp_server` `oauth` block and `mcp.oauth` statements
- Added the `db.increment` statement
- Repository moved to [xano-inc/vscode-xanoscript-language](https://github.com/xano-inc/vscode-xanoscript-language)

## [0.3.3] - 2026-09-15

- Upgraded the language server to 12.16.5

## [0.2.1] - 2026-06-03

- Added support for Datadog statements in the language server
- Added `enforce_hidden_fields` to db `add`, `edit` and `add_or_edit` actions
