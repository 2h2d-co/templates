# Agent Instructions

- This project is a TypeScript ESM CLI package.
- Run `npm run check` and `npm test` before committing meaningful code changes.
- Keep the CLI entrypoint in `src/cli.ts` and package binary wrapper in `bin/` aligned.
- Use Conventional Commits and maintain `CHANGELOG.md` in Keep a Changelog style; add entries for `feat:` and `fix:` changes under `Unreleased`.
- Release commits should update the package version, move `Unreleased` entries into the new release section, and use `release: v<version>` as the commit subject.
- Release tags must be lightweight tags. Create one with `git tag v<version>`; do not use `git tag -a`, `git tag -s`, `git tag -m`, or `cog bump --annotated`.
