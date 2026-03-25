# Contributing

## Prerequisites

- Git
- Bash
- Make

## Local Workflow

1. Create or switch to the issue branch.
2. Make changes in small logical units.
3. Run checks:

```bash
make lint
make test
```

4. Commit with a clear message (include issue identifier when available).
5. Open or update a PR against `main`.

## PR Checklist

- [ ] Changes are scoped to the issue.
- [ ] `make lint` passes.
- [ ] `make test` passes.
- [ ] Documentation is updated when behavior or workflow changes.
