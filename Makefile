export SHELL:=/bin/bash
SCHEME:=$(or $(shell which scheme), /usr/bin/scheme)

.PHONY: test
test: checktools
	$(SCHEME) --load sample.scm


.PHONY: checktools
checktools: | $(SCHEME)

