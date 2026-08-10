# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

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
