#!/usr/bin/env sh
echo "$1"
output=$(mit-scheme < $1 | grep "[0-9]* tests, [0-9]* failures, [0-9]* errors")
echo "$output"
# TODO add logic to exit with non-zero if there are any failures

