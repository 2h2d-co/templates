# Changelog

## Unreleased

- Add `pack:dry` scripts and documentation to every npm package template.
- Use the conventional `pi` parameter name in the command-free Pi extension starter.
- Start the generated Go changelog with an empty `Unreleased` section.

- Add npm package-name validation and automatic `0.0.1-alpha.0` publication metadata to the TypeScript and Pi extension templates.
- Remove the placeholder slash command and command-specific variables from the Pi extension template.
- Start generated package changelogs with an empty `Unreleased` section.
- Run generated npm package setup commands inside their mise-managed tool environments.

- Require lightweight release tags in generated documentation, agent instructions, hooks, and release validation.
- Update shared project hooks to hk-config 0.4.0.

- Update generated project toolchains to hk 1.53.0, zizmor 1.28.0, Go 1.26.5, oxfmt 0.60.0, oxlint 1.75.0, and oxlint-tsgolint 7.0.2001, including type-aware lint coverage for release scripts.
- Replace Gitleaks with Betterleaks in generated project hooks and toolchains.

- Add npm release staging workflow to the `pi-extension` template.
- Update the TypeScript templates to Node.js 22.19, TypeScript 7, and exactly pinned Node and Oxc tooling.
- Standardize TypeScript template quality gates on hk, keep behavioral tests separate, and enforce the seven-day npm release-age policy.
- Update the `pi-extension` template to Pi 0.83.0 with a `>=0.83.0 <0.84.0` peer compatibility range.

## 0.0.1-alpha.0

- Initial template collection with `ts-cli`, `ts`, `go-cli`, and `pi-extension`.
