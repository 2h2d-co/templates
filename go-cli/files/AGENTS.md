# Agent Instructions

- This project is a Go CLI using Cobra.
- Run `go test ./...` before committing meaningful code changes.
- Keep command behavior documented in `README.md`.
- Use Conventional Commits and maintain `CHANGELOG.md` in Keep a Changelog style; add entries for `feat:` and `fix:` changes under `Unreleased`.
- Create releases with `scripts/release.sh VERSION` from clean `main` synchronized with `origin/main`.
- Release commits must include the reproducible release-manifest digest in an SSH-signed commit.
- Stable releases move `Unreleased` entries into a dated section; prereleases keep them under `Unreleased`.
- Release commits use `release: vVERSION` as the subject.
- Release tags must be lightweight tags and must be pushed atomically with `main`; do not use `git tag -a`, `git tag -s`, `git tag -m`, or `cog bump --annotated`.
