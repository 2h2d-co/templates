# Agent Instructions

- This project is a TypeScript ESM package.
- Run `npm run check` and `npm test` before committing meaningful code changes.
- Run `npm run pack:dry` to build and inspect the npm package contents before release.
- Keep `.github/npm-package-files` synchronized with every intentional package-content change; local release validation and both CI jobs enforce it exactly.
- Keep exports in `package.json` aligned with built files in `dist/`.
- Use Conventional Commits and maintain `CHANGELOG.md` in Keep a Changelog style; add entries for `feat:` and `fix:` changes under `Unreleased`.
- Keep changelog entries under `Unreleased` for prereleases and move them into a release section only for stable releases.
- Use `npm run release -- <version>` to build the release package locally, create an SSH-signed `release: v<version>` commit containing its `Npm-Artifact-SHA256` trailer, verify a clean rebuild, and create the matching lightweight tag.
- Push the release commit and tag atomically; do not use `git tag -a`, `git tag -s`, `git tag -m`, or `cog bump --annotated`.
- Push stable or prerelease `v<version>` tags and let CI build and stage the package with trusted publishing and provenance. Stable versions use `latest`; prereleases derive a non-`latest` dist-tag from their first prerelease identifier.
