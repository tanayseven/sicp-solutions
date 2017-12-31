export SHELL:=/bin/bash
SCHEME:=$(or $(shell which scheme), /usr/bin/scheme)

TEST_FILES:=$(wildcard tests/*.scm)

.PHONY: test
test: $(TEST_FILES)

tests/test_ex_%.scm: FORCE
	sh -c "./run_test.sh $@"

FORCE:

.PHONY: checktools
checktools: | $(SCHEME)

