# SKILLS

Repository-specific commands and automation guidance.

## Commands

- Install/setup: no dependency installation required for current scaffold.
- Lint:

  ```bash
  make lint
  ```

- Test:

  ```bash
  make test
  ```

## What Commands Do

- `make lint`
  - Verifies required repository docs exist.
  - Ensures orchestration artifacts path is ignored in `.gitignore`.
  - Verifies navbar source files and navbar test script are present.
- `make test`
  - Executes base integrity checks from `scripts/validate_repo.sh`.
  - Runs `tests/navbar_test.sh` to validate semantic navbar markup and responsive CSS hooks.

## Layout

- `README.md` - project overview
- `ARCHITECTURE.md` - architecture and boundaries
- `SKILLS.md` - automation and command reference
- `CONTRIBUTING.md` - contribution workflow
- `CHANGELOG.md` - change history
- `Makefile` - primary local command entrypoints
- `scripts/` - local validation scripts
- `src/` - static frontend source (`index.html`, `styles.css`)
- `tests/` - shell checks for repository integrity and feature validation

## Automation Safety

- Use the branch provided by orchestration (`ORCH_BRANCH`) for all automated changes.
- Do not commit `.orch-symphony/` artifacts or secret files.
- Keep changes scoped to the active issue.
