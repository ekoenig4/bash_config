#!/bin/sh

REPO=$(dirname $0)

CFGS=(
    bash_profile
    bashrc
    userrc
    zshrc
)

for CFG in ${CFGS[@]}; do
    if [ -f $REPO/$CFG ]; then
        cp -v $REPO/$CFG ~/.$CFG
    fi
done