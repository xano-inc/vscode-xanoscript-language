# Contributing

Thanks for helping improve XanoScript support in VS Code.

This repository is the editor extension: the language registration, TextMate grammar, snippets and the client that starts the language server. Diagnostics, completion, hover and go to definition live in the [XanoScript language server](https://github.com/xano-inc/xanoscript-language-server), so please report language issues there.

For a security issue, follow [SECURITY.md](SECURITY.md) instead of opening an issue.

## Setup

```sh
npm install
npm run compile
```

Node.js 20 or later is required. Press `F5` in VS Code to open an Extension Development Host with the extension loaded. `npm run watch` rebuilds on every change.

## Checks

```sh
npm run lint
npm run check-types
npm test
```

`npm test` builds the extension, starts the bundled language server and checks that it answers an `initialize` request and reports diagnostics for a broken `.xs` file. CI runs lint, the tests and `vsce package` on every push and pull request.

## How the code is organized

- `src/extension.ts` - activation entry point
- `src/registerServer.ts` - starts the language server over IPC and connects it to `.xs` files
- `src/snippets/` - one `.xs` file per snippet, compiled into `dist/xanoscript.json` by `npm run snippets`. The `//` comment at the top of a file becomes the snippet's description, and the file name becomes its prefix.
- `syntaxes/xanoscript.tmLanguage.json` - TextMate grammar
- `language-configuration.json` - brackets, comments, auto-closing and surrounding pairs
- `test/` - smoke tests for the bundled server

The language server comes from the [`@xano/xanoscript-language-server`](https://www.npmjs.com/package/@xano/xanoscript-language-server) npm package, pinned to an exact version in `package.json`. `esbuild.js` bundles it into `dist/server.js` (Node) and `dist/worker.js` (browser), alongside the client in `dist/extension.js`.

To pick up a new language server release, bump the pinned version and run `npm install` and `npm test`.

## Pull requests

- Keep each pull request to one change, and describe what it does and how you tested it.
- Run `npm run lint` and `npm test` before you open it.
- Add a line to [CHANGELOG.md](CHANGELOG.md) for anything a user would notice.

## Packaging

```sh
npx vsce package
```

This builds a `.vsix` file you can install with **Extensions: Install from VSIX...**.
