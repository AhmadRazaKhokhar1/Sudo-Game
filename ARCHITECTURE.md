# Architecture

## Current State

The repository now includes an initial static frontend scaffold with a modern navigation bar and repository-level validation checks.

## Top-Level Boundaries

- Root markdown files: project and workflow documentation.
- `scripts/`: repository validation and maintenance scripts.
- `src/`: frontend source boundary containing static HTML/CSS assets and a tiny inline navbar interaction script.
- `tests/`: shell-based repository and feature checks.

## Data Flow

Current flow is developer-centric:

1. Contributor updates code/docs in `src/`, `tests/`, and root docs.
2. `make lint` validates required docs and frontend asset presence.
3. `make test` runs baseline repository integrity checks plus navbar-specific assertions, including mobile toggle accessibility hooks.

## Dependencies

- GNU Make
- POSIX shell (`bash`)
- Git
- Static HTML/CSS (no framework/runtime dependency yet)

No external runtime services are required at this stage.

## Configuration

- Local environment configuration is expected via `.env` files when dynamic application code is introduced.
- `.env*` files are excluded from version control by `.gitignore`.
