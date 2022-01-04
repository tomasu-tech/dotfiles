#!/bin/sh

#install
if [ `uname -m` = 'x86_64' ]; then
    echo "You are on x86_64 shell. Installing anyenv..."
    which anyenv >/dev/null 2>&1 && anyenv install rbenv
else
    echo "You are on arm64 shell. Instalation Stopped."
    exit 1
fi
