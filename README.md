# 2H2D Templates

Template collection for [`@2h2d/new`](https://github.com/2h2d-co/new).

```bash
new --template-source 2h2d-co/templates ts-cli my-tool
new --template-source 2h2d-co/templates ts my-library
new --template-source 2h2d-co/templates go-cli my-go-tool
new --template-source 2h2d-co/templates pi-extension my-pi-package
```

The npm package templates (`ts`, `ts-cli`, and `pi-extension`) validate that the requested package
name is available, authenticate with npm when needed, and publish `0.0.1-alpha.0` under the `alpha`
tag after successful project creation. Pass `--no-npm-publish` to retain availability validation
without publishing.

Generated npm projects also include the hardened release flow used by 2H2D packages:

- an exact `.github/npm-package-files` package-content allowlist;
- a local release command that records the reproducible package SHA-256 in an SSH-signed commit;
- a read-only build job separated from the environment-gated trusted-publishing job;
- GitHub artifact attestation and npm provenance for the exact staged archive;
- CODEOWNERS assigning every file to `@kaanozdokmeci`.

After creating a repository, configure npm trusted publishing for
`.github/workflows/publish.yml`, configure the tag-restricted `npm-publish` GitHub environment, and
apply the repository branch and tag protection settings described in the generated README. These
GitHub and npm server-side settings cannot be enforced by template files alone.

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

## Releases

Release tags must be lightweight tags. Create one with `git tag vX.Y.Z`; do not use `git tag -a`, `git tag -s`, `git tag -m`, or `cog bump --annotated`.
