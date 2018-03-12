#!/bin/sh -eu

if [ ! $(xcode-select -p 2>/dev/null) ]; then
    printf '`xcode-select --install` is not running'
    exit 1
fi

github=https://github.com/m4kvn
raw=raw/master

curl -sL $github/install/$raw/init.sh | sh
curl -sL $github/scripts/$raw/setup.sh | sh
curl -sL $github/dotfiles/$raw/setup.sh | sh
curl -sL $github/configs/$raw/setup.sh | sh
