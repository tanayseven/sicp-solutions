export SHELL:=/bin/bash
SCHEME:=$(or $(shell which scheme), /usr/bin/scheme)

TEST_FILES:=$(shell find tests/*)

.PHONY: test
test: checktools
	$(SCHEME) --load $(TEST_FILES)


.PHONY: checktools
checktools: | $(SCHEME)

