import * as fs from "fs";
import { join } from "path";

interface Snippet {
  prefix: string;
  description: string;
  body: string;
}

/**
 * Building snippets is a bit of a pain as you have to stringify the body (code) of the snippets
 * to simplify it, you can create a file with the extension .xs (xano script) and write your snippet
 * in it. Any comment (starting with //) will be used as the description of the snippet
 *
 * This script runs during the build process and creates a xanoscript.json file in the dist folder
 * for the extension to use.
 *
 * All the other rules of snippets apply (see https://code.visualstudio.com/docs/editor/userdefinedsnippets)
 */
async function buildSnippets() {
  const snippets: Record<string, Snippet> = {};

  const files = fs.readdirSync(__dirname);

  files
    .filter((fileName) => fileName.endsWith(".xs"))
    .forEach((fileName) => {
      const snippetStr = fs.readFileSync(join(__dirname, fileName), "utf-8");
      const snippet = parseSnippet(snippetStr);

      // if the snippet file is conditional-else.xs then the prefix is conditional-else
      snippet.prefix = fileName.slice(0, -3).trim();

      // the name of the snippet is the file name without the .xs extension
      // with spaces instead of dashes
      snippets[fileName.slice(0, -3).replace(/[-_]+/g, " ")] = snippet;
    });

  const snippetJson = JSON.stringify(snippets, null, 2);

  // create the dist folder if it doesn't exist
  if (!fs.existsSync(__dirname + "/../../dist")) {
    fs.mkdirSync(__dirname + "/../../dist");
  }
  fs.writeFileSync(__dirname + "/../../dist/xanoscript.json", snippetJson);
}

/**
 * Extract the comments as description and the rest as body
 * @param snippetStr
 * @returns
 */
function parseSnippet(snippetStr: string) {
  const snippet = {
    prefix: "",
    description: "",
    body: "",
  };

  const body = [];
  const description = [];
  // all lines starting with // are comments to be used a description
  for (const line of snippetStr.split("\n")) {
    if (line.startsWith("//")) {
      const comment = line.slice(2);
      description.push(comment.trim());
    } else {
      body.push(line);
    }
  }
  snippet.body = body.join("\n");
  snippet.description = description.join("\n");
  return snippet;
}

buildSnippets();
