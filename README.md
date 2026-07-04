# 2H2D Templates

Template collection for [`@2h2d/new`](https://github.com/2h2d-co/new).

```bash
new --template-source 2h2d-co/templates ts-cli my-tool
new --template-source 2h2d-co/templates ts my-library
new --template-source 2h2d-co/templates go-cli my-go-tool
new --template-source 2h2d-co/templates pi-extension my-pi-package
```

The root `new.toml` marks this repository as a `new` template collection. Each template lives in a directory whose name is the template id.

## Templates

- `ts-cli` - TypeScript ESM CLI package using npm, TypeScript, oxlint, and oxfmt.
- `ts` - TypeScript ESM project/library starter using npm, TypeScript, oxlint, and oxfmt.
- `go-cli` - Go Cobra CLI starter, based on the reusable structure from `dots` rather than the more domain-specific `cage`.
- `pi-extension` - Pi package with a TypeScript extension entrypoint.

## Template authoring conventions

- `template.toml` defines prompts and setup commands.
- Files under `files/` are copied into the generated project.
- Files ending in `.eta` are rendered with Eta and the `.eta` suffix is stripped.
- File and directory names can use `{{ variable }}` interpolation.
- Commands run from the generated project directory after rendering and before the initial git commit.
