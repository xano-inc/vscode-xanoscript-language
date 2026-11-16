# Changelog

All notable changes to the XanoScript Language Server extension are documented in this file.

## [Unreleased]

- The language server now comes from the `@xano/xanoscript-language-server` npm package, upgraded to 12.30.0
- Unit tests: MCP prompts, resources and tools accept `test` blocks
- Xano AI: grammar for the Xano AI statements, the `xano-ai` agent provider, an optional `location`, and `save_to_files` on the media statements
- Tables accept the `audit` block
- `mesh0` setting (the logging type) on objects, containers and branches
- `realtime.kick`, and an optional `status` on `throw`
- `run.job` and `run.service` are removed; a document that still uses one is reported
- Accepts the XanoScript the backend writes on pull (branch, triggers, MCP, tables, db, quoting), including `api.call` and `tool.call` in prompt and resource stacks
- Policy documents: parsing, validation, completion and hover, with checks against Xano's policy check catalogue, an `applies_when` warning, and policy checks for `uses` and `api.call` auth blocks
- MCP: grammar for prompts, resources, tool metadata and elicitation (MCP 2026-07-28), plus the `mcp_server` `oauth` block and `mcp.oauth` statements
- Added the `db.increment` statement
- Repository moved to [xano-inc/vscode-xanoscript-language](https://github.com/xano-inc/vscode-xanoscript-language)

## [0.3.3] - 2026-09-15

- Upgraded the language server to 12.16.5

## [0.2.1] - 2026-06-03

- Added support for Datadog statements in the language server
- Added `enforce_hidden_fields` to db `add`, `edit` and `add_or_edit` actions
