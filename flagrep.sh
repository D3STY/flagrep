#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <search_path>"
    exit 1
fi

search_path=$1

regex_patterns=(
#    "^VL{\w+}$"
#    "^HTB{.{32}}$"
    "^(HTB|VL){(.{32}|\w+)}$"
)

grep -r -E -n --color=auto "${regex_patterns[@]}" "$search_path" 2>/dev/null