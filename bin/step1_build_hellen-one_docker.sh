#!/bin/bash

SCRIPTDIR=$(dirname "$0")

if [ ! -e "$SCRIPTDIR/../git_scripts" ]; then
    echo "No submodules?"
    git submodule update --init --recursive
fi

cd "$SCRIPTDIR"

docker build -t hellen-one .
