#!/usr/bin/env bash
set -euo pipefail

html_file="src/index.html"
css_file="src/styles.css"

[[ -s "$html_file" ]] || {
  echo "Missing navbar HTML: $html_file" >&2
  exit 1
}

[[ -s "$css_file" ]] || {
  echo "Missing navbar CSS: $css_file" >&2
  exit 1
}

grep -Eq '<nav class="navbar" aria-label="Primary">' "$html_file" || {
  echo "Expected semantic primary navbar markup in $html_file" >&2
  exit 1
}

grep -Eq '<ul class="nav-links">' "$html_file" || {
  echo "Expected nav links list in $html_file" >&2
  exit 1
}

grep -Eq 'class="cta"' "$html_file" || {
  echo "Expected call-to-action link in $html_file" >&2
  exit 1
}

grep -Eq '^\.navbar \{' "$css_file" || {
  echo "Expected .navbar styles in $css_file" >&2
  exit 1
}

grep -Eq '@media \(max-width: 768px\)' "$css_file" || {
  echo "Expected responsive navbar media query in $css_file" >&2
  exit 1
}

echo "Navbar checks passed."
