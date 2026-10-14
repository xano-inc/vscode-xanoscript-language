# CLAUDE.md

Guidance for people and coding agents working in this repository.

## Commands

```bash
npm install          # install dependencies
npm run compile      # type-check, build snippets and bundle into dist/
npm run watch        # rebuild on change
npm run lint         # eslint
npm run check-types  # tsc --noEmit
npm test             # compile, then smoke-test the bundled language server
npm run snippets     # rebuild dist/xanoscript.json from src/snippets/*.xs
npm run package      # production build (minified)
npx vsce package     # build a .vsix
```

## Architecture

A VS Code extension that provides language support for XanoScript, the language that describes a Xano backend. It covers language features only: highlighting, diagnostics, completion, hover, go to definition and snippets.

- `src/extension.ts` - activation entry point, starts the language client
- `src/registerServer.ts` - language client setup (LSP over IPC, `.xs` documents)
- `src/snippets/` - one `.xs` file per snippet plus `build.ts`, which compiles them into `dist/xanoscript.json`. A `//` comment becomes the description and the file name becomes the prefix.
- `src/md.d.ts` - type declaration for `.md` imports
- `language-configuration.json` - brackets, comments, auto-closing, surrounding pairs
- `syntaxes/xanoscript.tmLanguage.json` - TextMate grammar
- `test/smoke.test.js` - starts `dist/server.js` over stdio and checks `initialize` and diagnostics

### Language server

The server is the [`@xano/xanoscript-language-server`](https://www.npmjs.com/package/@xano/xanoscript-language-server) npm package, a devDependency pinned to an exact version. Its source lives in [xano-inc/xanoscript-language-server](https://github.com/xano-inc/xanoscript-language-server); make language changes there, publish, then bump the version here.

### Build

`esbuild.js` produces three bundles:

- `src/extension.ts` → `dist/extension.js` (client)
- `node_modules/@xano/xanoscript-language-server/server.js` → `dist/server.js` (Node)
- `node_modules/@xano/xanoscript-language-server/language-server-worker.js` → `dist/worker.js` (browser)

Everything is bundled, so the extension has no runtime `dependencies` and `node_modules` is excluded from the `.vsix`.

## Notes

- Run `npm run lint` and `npm test` before committing.
- Add user-visible changes to `CHANGELOG.md`.
- The marketplace identity (`publisher: xano`, `name: xanoscript-language-server`) must not change.
