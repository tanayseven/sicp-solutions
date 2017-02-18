export SHELL:=/bin/bash
SCHEME:=$(or $(shell which scheme), /usr/bin/scheme)

.PHONY test
test:
	
