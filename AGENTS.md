# templates Project Instructions

This repository is a template collection for `@2h2d/new`.

## Conventions

- Format commit messages according to [Conventional Commits](https://www.conventionalcommits.org/).
- Maintain `CHANGELOG.md` using the [Keep a Changelog](https://keepachangelog.com/) style.
- Add changelog entries for changes whose commit would be `feat:` or `fix:`; keep entries under `Unreleased` until a release is made.
- Release commits should do the following:
  - update the project version;
  - move `Unreleased` changelog entries into the new release section;
  - commit with `release: vX.Y.Z` as the commit message;
  - create a lightweight tag named `vX.Y.Z` with `git tag vX.Y.Z`; do not use `git tag -a`, `git tag -s`, `git tag -m`, or `cog bump --annotated`.

## Core Constraints

- Keep template ids aligned with directory names.
- Prefer declarative `template.toml` changes over custom setup code.
- Declare each release environment in the template `[github]` block so `new` applies the shared
  branch, release-tag, and environment controls after repository creation.
- Test a template by generating into a temporary directory before changing its setup commands.
