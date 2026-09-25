#!/usr/bin/env bash
# Generate each template with the pinned `new` CLI and run the generated project's `mise run check`.
# Usage: scripts/test-templates.sh [template...]
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
work="$(mktemp -d)"
generated=()

cleanup() {
	for project in "${generated[@]}"; do
		mise trust --untrust --quiet "$project" >/dev/null 2>&1 || true
	done
	rm -rf "$work"
}
trap cleanup EXIT

# Generated commits and checks must not depend on the caller's Git identity, signing, or hooks.
export GIT_CONFIG_GLOBAL=/dev/null
export GIT_CONFIG_NOSYSTEM=1
export GIT_AUTHOR_NAME="Template Test"
export GIT_AUTHOR_EMAIL="templates@example.invalid"
export GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
export GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

if [ "$#" -gt 0 ]; then
	templates=("$@")
else
	templates=()
	for manifest in "$root"/*/template.toml; do
		templates+=("$(basename "$(dirname "$manifest")")")
	done
fi

suffix="$(date +%s)$$"
failed=()
for template in "${templates[@]}"; do
	manifest="$root/$template/template.toml"
	if [ ! -f "$manifest" ]; then
		echo "unknown template: $template" >&2
		exit 2
	fi

	# Pass every declared variable that would otherwise default from personal Git, npm, or gh config.
	flags=(--github-owner 2h2d-co)
	variables="$(awk '/^\[\[variables\]\]/ { in_variable = 1; next } /^\[/ { in_variable = 0 } in_variable && $1 == "name" { gsub(/"/, "", $3); print $3 }' "$manifest")"
	for variable in $variables; do
		case "$variable" in
		authorName) flags+=(--author-name "Template Test") ;;
		authorEmail) flags+=(--author-email "templates@example.invalid") ;;
		authorUrl) flags+=(--author-url "https://example.invalid") ;;
		licensor) flags+=(--licensor "Template Test") ;;
		esac
	done

	# The project name is also the npm package name, which must be unregistered.
	project="tmpl-test-$template-$suffix"
	echo "==> $template: generating $project"
	if ! (cd "$work" && new --template-source "$root" "$template" "$project" --yes --no-github --no-npm-publish "${flags[@]}"); then
		failed+=("$template (generate)")
		continue
	fi
	generated+=("$work/$project")

	# GoReleaser validates release settings against the Git remote that GitHub creation would add.
	git -C "$work/$project" remote add origin "https://github.com/2h2d-co/$project.git"

	echo "==> $template: mise run check"
	if ! (cd "$work/$project" && mise run check); then
		failed+=("$template (check)")
	fi
done

if [ "${#failed[@]}" -gt 0 ]; then
	printf 'template test failed: %s\n' "${failed[@]}" >&2
	exit 1
fi
echo "all templates generated and passed mise run check: ${templates[*]}"
