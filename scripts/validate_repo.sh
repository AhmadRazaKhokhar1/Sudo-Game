#!/usr/bin/env bash
set -euo pipefail

required_files=(
  "README.md"
  "ARCHITECTURE.md"
  "SKILLS.md"
  "CONTRIBUTING.md"
  "CHANGELOG.md"
  "Makefile"
  ".gitignore"
)

for file in "${required_files[@]}"; do
  if [[ ! -s "$file" ]]; then
    echo "Missing or empty required file: $file" >&2
    exit 1
  fi
done

required_dirs=(
  "scripts"
  "src"
  "tests"
)

for dir in "${required_dirs[@]}"; do
  if [[ ! -d "$dir" ]]; then
    echo "Missing required directory: $dir" >&2
    exit 1
  fi
done

grep -Eq '^\.orch-symphony/' .gitignore || {
  echo "Expected .orch-symphony/ to be ignored in .gitignore" >&2
  exit 1
}

echo "Repository baseline validation passed."
