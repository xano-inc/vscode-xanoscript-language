const esbuild = require("esbuild");

const production = process.argv.includes("--production");
const watch = process.argv.includes("--watch");

async function main() {
  const configs = [
    // Server (Language Server) configuration
    {
      entryPoints: ["node_modules/@xano/xanoscript-language-server/server.js"],
      bundle: true,
      format: "cjs",
      minify: production,
      sourcemap: !production,
      sourcesContent: true,
      platform: "node",
      outfile: "dist/server.js",
      external: ["vscode"],
      logLevel: "info",
      resolveExtensions: [".ts", ".js"],
      mainFields: ["module", "main"],
      keepNames: true,
      treeShaking: true,
      // add markdown (.md file) as a text asset
      loader: {
        ".md": "text",
      },
    },
    // Worker configuration
    {
      entryPoints: ["node_modules/@xano/xanoscript-language-server/language-server-worker.js"],
      bundle: true,
      format: "cjs",
      minify: production,
      sourcemap: !production,
      sourcesContent: true,
      platform: "browser",
      outfile: "dist/worker.js",
      external: ["vscode"],
      logLevel: "info",
      resolveExtensions: [".ts", ".js"],
      mainFields: ["module", "main"],
      keepNames: true,
      treeShaking: true,
      // add markdown (.md file) as a text asset
      loader: {
        ".md": "text",
      },
    },
    // Client (Extension) configuration
    {
      entryPoints: ["src/extension.ts"],
      bundle: true,
      format: "cjs",
      minify: production,
      sourcemap: true,
      sourcesContent: false,
      platform: "node",
      outfile: "dist/extension.js",
      external: ["vscode"],
      logLevel: "info",
      resolveExtensions: [".ts", ".js"],
      mainFields: ["main", "module"],
      treeShaking: true,
      loader: {
        ".md": "text",
      },
    },
  ];

  const contexts = [
    await esbuild.context(configs[0]),
    await esbuild.context(configs[1]),
    await esbuild.context(configs[2]),
  ];

  if (watch) {
    await Promise.all(contexts.map((ctx) => ctx.watch()));
    console.log("[watch] build started");
  } else {
    await Promise.all(contexts.map((ctx) => ctx.rebuild()));
    await Promise.all(contexts.map((ctx) => ctx.dispose()));
    console.log("Build finished");
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});

