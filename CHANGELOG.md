# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Changed

- Generate Go projects with Go 1.27.1 and hk-config 0.11.1. Go 1.27 binaries require macOS 13
  Ventura or later.
- Generate Pi extension projects for Pi `>=1.0.1 <1.1.0` with the Pi 1.0.1 development
  dependency. Their CI runs the full `npm audit` again, and their npm policy exempts
  `@anthropic-ai/sdk`, which Pi AI pins exactly, from the minimum release age.
- Generated Pi extension projects provide `mise run init`, which installs the locked npm
  dependencies and the hk Git hooks. Their README and CI use it instead of `npm install` and
  `npm ci`.

## [0.3.1] - 2026-10-03

### Changed

- Generate projects with hk 2.2.0 and zizmor 1.30.1. Generated workflows pin `jdx/mise-action`
  4.3.0 and mise 2026.9.14.
- Generate TypeScript, TypeScript CLI, and Pi extension projects with Node.js 22.23.3, npm 11.20.0,
  `@2h2d/oxlint-config` 0.1.2, Oxlint 1.85.0, `oxlint-tsgolint` 7.0.2003, oxfmt 0.70.0, and
  `@types/node` 22.20.4. Their npm publishing jobs use Node.js 26.10.0 with npm 11.19.1.
- Generate Go projects with Go 1.26.8, golangci-lint 2.14.0, GoReleaser 2.18.2, and
  `golang.org/x/vuln` 1.8.0.

## [0.3.0] - 2026-09-30

### Added

- The Pi extension release workflow creates the immutable GitHub release for each tag from the verified archive, its checksum, and the version's changelog section.
- Generate projects with default-branch CI for audits, checks, tests, and build or package
  validation.
- Generate projects with a `mise run check` task that runs the complete non-writing validation.

### Changed

- Generate projects with hk-config 0.11.0 and hk 2.0.1. Generated workflows pin mise 2026.9.11,
  which installs hk 2 through the locked packslip backend.
- Generate Go projects with Go 1.26.7 and golangci-lint 2.13.1.
- Generate Pi packages against `@earendil-works/pi-coding-agent` 0.99.1 with the peer range
  `>=0.99.1 <0.100.0`. The minimum-release-age policy allows its telemetry, MCP, codemode, and
  chord packages. Generated agent instructions support only the Pi version the package develops against.
  Generated CI audits production dependencies only until a Pi release ships brace-expansion
  5.0.12 or later, because Pi 0.99.1 pins a vulnerable development-only copy.

### Fixed

- Format generated TypeScript and Pi extension projects with oxfmt during setup, so project names
  that lengthen interpolated lines no longer fail the first formatting check.
- Format the generated Pi extension `scripts/release-notes.ts` with oxfmt so project generation
  passes its initial `npm run check`.

### Security

- Generate Go projects with gosec enabled through golangci-lint and a module-pinned govulncheck
  tool enforced by shared hk checks.
- Generate Go projects with Go 1.26.7 to include the latest standard-library security fixes in the
  1.26 release line.

## [0.2.0] - 2026-08-27

### Added

- Generate Go CLI projects with a local SSH-signed release command and reproducible darwin/linux
  archives for amd64 and arm64.
- Configure generated GitHub repositories with shared branch, release-tag, and tag-only release
  environment controls.
- Generate npm projects with the shared `@2h2d/oxlint-config` strict policy.

### Changed

- Generate projects with hk-config 0.8.0, hk 1.56.0, and Betterleaks 1.8.1.
- Generate TypeScript projects with `@2h2d/oxlint-config` 0.1.1, Oxlint 1.79, and Oxfmt 0.64.
- Generate Pi packages against `@earendil-works/pi-coding-agent` 0.84.2.
- Generate TypeScript projects with the shared `@2h2d/ts-config` compiler policy.
- Generate TypeScript projects with the stable `@2h2d/oxlint-config` 0.1.0 ruleset.
- Generate TypeScript projects with `@2h2d/oxlint-config` 0.1.0-alpha.12, inherit its complete
  strict configuration, and attach named rejection-handler diagnostics to Promise call sites.
- Generate TypeScript projects with `@2h2d/oxlint-config` 0.1.0-alpha.6 so heuristic
  silent-error findings remain advisory.
- Generate projects with `@2h2d/oxlint-config` 0.1.0-alpha.2 and unused suppression
  reporting.
- Generate npm projects with Oxlint 1.78, Oxfmt 0.63, and `@2h2d/oxlint-config` 0.1.0-alpha.1.

### Fixed

- Reject primitive JSON values where generated release scripts require package metadata objects.

### Security

- Restrict GitHub release creation to protected tag-push events while retaining signed release
  commit and `main` ancestry validation.
- Give generated Go projects exact archive-content manifests, normalized metadata, checksums,
  immutable artifact-ID transfer, separate read-only and credentialed jobs, conditional public
  attestations, and repository-wide code ownership.

## [0.1.0] - 2026-08-10

### Added

- Provide production-ready `ts`, `ts-cli`, `go-cli`, and `pi-extension` project templates with
  pinned toolchains, tests, quality gates, release workflows, and project documentation.
- Let npm templates reserve package names and publish an initial prerelease after successful project
  and repository creation.
- Generate Pi packages against `@earendil-works/pi-coding-agent` 0.84.1 and Go CLIs with Cobra and
  GoReleaser.

### Security

- Give generated npm packages reproducible SSH-signed release digests, exact package-content
  allowlists, separate read-only build and credentialed staging jobs, artifact attestations, and npm
  provenance.
- Suppress npm lifecycle scripts during release packaging, enforce minimum dependency release ages,
  and include Betterleaks, actionlint, and zizmor in generated quality gates.
- Protect template release policy with repository-wide code ownership, signed release commits,
  read-only third-party validation, and environment-gated GitHub release creation.
