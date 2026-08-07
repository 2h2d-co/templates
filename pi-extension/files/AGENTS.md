# Agent Instructions

- This project is a Pi package with a TypeScript extension entrypoint.
- Pi extensions run with full system permissions; keep side effects explicit and documented.
- Run `npm run check` and `npm test` before committing meaningful code changes.
- Run `npm run pack:dry` to inspect the npm package contents before release.
- Use Conventional Commits and maintain `CHANGELOG.md` in Keep a Changelog style; add entries for `feat:` and `fix:` changes under `Unreleased`.
- Release commits should update the package version, move `Unreleased` entries into the new release section, and use `release: v<version>` as the commit subject.
- Release tags must be lightweight tags. Create one with `git tag v<version>`; do not use `git tag -a`, `git tag -s`, `git tag -m`, or `cog bump --annotated`.
