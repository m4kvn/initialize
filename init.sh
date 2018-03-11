#!/bin/sh

github=https://github.com/m4kvn
raw=raw/master

curl -sL $github/install/$raw/setup.sh | sh
curl -sL $github/scripts/$raw/setup.sh | sh
curl -sL $github/dotfiles/$raw/setup.sh | sh
