# XanoScript Language Server for VS Code

Language support for XanoScript (`.xs` files) in VS Code, Cursor and other editors built on VS Code.

[Xano](https://www.xano.com) is one platform to build, run and govern AI-built software. XanoScript is the language that describes a Xano backend: its APIs, functions, tables, tasks, agents and policies. This extension runs the [XanoScript language server](https://github.com/xano-inc/xanoscript-language-server) in your editor, so you and your coding agent see the problems a push would refuse while you write the code.

## Features

- **Syntax highlighting** - TextMate grammar plus semantic tokens for every XanoScript construct
- **Diagnostics** - Errors and warnings as you type, including cross-file references, variable usage and workspace policy checks
- **Completion** - Context-aware suggestions, triggered by `.`, `:`, `$` and `|`
- **Hover documentation** - Explanations, parameters and examples for statements, filters and input variables
- **Go to definition** - Jump to a referenced function, task, query or table, or to where a variable is set
- **Snippets** - Templates for database queries, API calls, security functions, control flow and more

![Hover documentation](https://storage.googleapis.com/xanoscript-vscode/inline-help.gif)

## Installation

Install **XanoScript Language Server** (`xano.xanoscript-language-server`):

- **VS Code:** from the [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=xano.xanoscript-language-server), or search for "XanoScript Language Server" in the Extensions view (Ctrl+Shift+X / Cmd+Shift+X).
- **Cursor, Windsurf and other VS Code-based editors:** from [Open VSX](https://open-vsx.org/extension/xano/xanoscript-language-server), or search for it in the editor's Extensions view.

Open any `.xs` file and the language server starts automatically.

## Example

A minimal API endpoint:

```xanoscript
query hello_world verb=GET {
  description = "Returns a personalized hello world message."

  input {
    text name filters=trim {
      description = "Name of the person to greet."
    }
  }

  stack {
    var $message {
      value = "Hello, " ~ $input.name ~ "! Welcome to the world of Xano."
    }
  }

  response = {
    message: $message
  }

  history = 100
}
```

## Learn more

- [XanoScript in VS Code](https://docs.xano.com/xanoscript/vs-code)
- [XanoScript language server](https://github.com/xano-inc/xanoscript-language-server)
- [Xano](https://www.xano.com)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) to build and test the extension locally. Language issues (diagnostics, completion, hover) belong in the [language server repository](https://github.com/xano-inc/xanoscript-language-server/issues).

## Security

To report a vulnerability, see [SECURITY.md](SECURITY.md). Please don't open a public issue.

## License

[MIT](LICENSE.md)
