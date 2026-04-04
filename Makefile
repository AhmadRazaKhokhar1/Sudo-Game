.PHONY: lint test

lint:
	@test -s README.md
	@test -s ARCHITECTURE.md
	@test -s SKILLS.md
	@test -s CONTRIBUTING.md
	@test -s CHANGELOG.md
	@grep -Eq '^\.orch-symphony/' .gitignore
	@test -s src/index.html
	@test -s src/styles.css
	@test -x tests/navbar_test.sh
	@echo "Lint checks passed."

test:
	@bash scripts/validate_repo.sh
	@bash tests/navbar_test.sh
