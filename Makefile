lint:
	@echo
	isort --diff -c .
	@echo
	blue --check --diff --color .
	@echo
	flake8 .
	@echo
	mypy .


format:
	isort .
	blue .


test:
	pytest --cov-report term-missing --cov-report html --cov-branch --cov app/
