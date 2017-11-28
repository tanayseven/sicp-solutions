export SHELL:=/bin/bash
SCHEME:=$(or $(shell which scheme), /usr/bin/scheme)

TEST_FILES:=$(shell find tests/*)

.PHONY: test
test: checktools
	for test_file in $(TEST_FILES) ; do\
		$(SCHEME) < $$test_file --quiet | grep "[0-9]* tests, [0-9]* failures, [0-9]* errors"; \
	done


.PHONY: checktools
checktools: | $(SCHEME)

