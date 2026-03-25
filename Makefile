.PHONY: lint test

lint:
	@test -s README.md
	@test -s ARCHITECTURE.md
	@test -s SKILLS.md
	@test -s CONTRIBUTING.md
	@grep -Eq '^\.orch-symphony/' .gitignore
	@echo "Lint checks passed."

test:
	@bash scripts/validate_repo.sh
