#!/usr/bin/env sh
test_output=`${mit-scheme < $1 | grep "[0-9]* tests, [0-9]* failures, [0-9]* errors"}`
echo $test_output
