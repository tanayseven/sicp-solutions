export SHELL:=/bin/bash
SCHEME:=$(or $(shell which scheme), /usr/bin/scheme)

TEST_FILES:=$(shell find tests/*)

.PHONY: test
test: checktools
	for test_file in $(TEST_FILES) ; do\
		sh -c "./run_test.sh $$test_file";\
	done


.PHONY: checktools
checktools: | $(SCHEME)

