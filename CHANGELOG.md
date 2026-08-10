# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Added

- Generate Go CLI projects with a local SSH-signed release command and reproducible darwin/linux
  archives for amd64 and arm64.

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
