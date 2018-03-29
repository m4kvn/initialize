#!/bin/sh -eu

if [ ! $(xcode-select -p 2>/dev/null) ]; then
    printf '`xcode-select --install` is not running'
    exit 1
fi

curl -sL https://github.com/m4kvn/initialize/raw/master/list \
 | (xargs -I{} curl -sL {} | sh)
