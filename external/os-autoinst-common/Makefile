.PHONY: help
help:
	@echo Call one of the available targets:
	@sed -n 's/\(^[^.#[:space:]A-Z]*\):.*$$/\1/p' Makefile | uniq

.PHONY: update-deps
update-deps:
	tools/update-deps --cpanfile cpanfile

.PHONY: test
test: test-tidy test-author

.PHONY: test-tidy
test-tidy:
	tools/tidyall --all --check-only

.PHONY: test-author
test-author:
	prove -l -r xt/
