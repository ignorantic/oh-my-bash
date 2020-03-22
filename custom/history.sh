#!/usr/bin/env bash

if [[ $- == *i* ]]
then
    bind '"\e[1;5A"':history-search-backward
    bind '"\e[1;5B"':history-search-forward
    shopt -s cmdhist
fi

