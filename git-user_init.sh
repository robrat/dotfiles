#!/bin/bash
OPTS=
if [[ $GIT_GLOBAL -eq 1 ]]; then
    OPTS="--global "
fi
git config $OPTS user.name "Robert Rathsack"
git config $OPTS user.email "robert.rathsack@gmail.com"

