lint:
	@echo
	isort --diff -c .
	@echo
	blue --check --diff --color .
	@echo
	flake8 .
	@echo
	mypy --ignore-missing-imports .


format:
	isort .
	blue .


test_only:
	pytest pytest --cov-report term-missing --cov-report html --cov-branch --cov app/


test: lint test_only
