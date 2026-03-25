# Architecture

## Current State

The repository is currently a base scaffold prepared for upcoming Sudo-Game implementation work.

## Top-Level Boundaries

- Root markdown files: project and workflow documentation.
- `scripts/`: repository validation and maintenance scripts.
- `src/`: application code boundary (currently scaffolded).
- `tests/`: test suite boundary (currently scaffolded).

## Data Flow

No runtime data flow exists yet because product code has not been implemented. Current flow is developer-centric:

1. Contributor updates code/docs.
2. `make lint` validates documentation and required files.
3. `make test` runs baseline repository integrity checks.

## Dependencies

- GNU Make
- POSIX shell (`bash`)
- Git

No external runtime services are required at this stage.

## Configuration

- Local environment configuration is expected via `.env` files when application code is introduced.
- `.env*` files are excluded from version control by `.gitignore`.
