#!/usr/bin/env sh

echo "\n$1"
NORMAL='\033[0m'
RED='\033[0;31m'
GREEN="\033[32m"
full_output=$(mit-scheme < $1);
output=$(echo $full_output | grep -o "[0-9]* tests, [0-9]* failures, [0-9]* errors")
if [ "$(echo $full_output | grep -o "[0-9]* tests, [1-9]* failures, [0-9]* errors")" = "" ]; then
    echo "$GREEN$output$NORMAL"
else
    echo "$RED$full_output$NORMAL"
    exit 1
fi;
