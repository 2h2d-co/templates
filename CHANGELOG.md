# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Added

- Generate Go CLI projects with a local SSH-signed release command and reproducible darwin/linux
  archives for amd64 and arm64.
- Configure generated GitHub repositories with shared branch, release-tag, and tag-only release
  environment controls.
- Generate npm projects with the shared `@2h2d/oxlint-config` strict policy.

### Changed

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
