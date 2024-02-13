#!/bin/bash

CFGS=(
    bash_profile
    bash_aliases
    bash_local
    bashrc
)

REPO=$(dirname $0)
for CFG in ${CFGS[@]}; do
    if [ -f $REPO/$CFG ]; then
        echo "Linking $CFG to ~"
        rm -f ~/.$CFG
        ln -srf $REPO/$CFG ~/.$CFG
        chmod 644 ~/.$CFG
    fi
done