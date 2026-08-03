# Agent Instructions

- This project is a TypeScript ESM CLI package.
- Run `npm run check` and `npm test` before committing meaningful code changes.
- Keep the CLI entrypoint in `src/cli.ts` and package binary wrapper in `bin/` aligned.
- Release tags must be lightweight tags. Create one with `git tag v<version>`; do not use `git tag -a`, `git tag -s`, `git tag -m`, or `cog bump --annotated`.
