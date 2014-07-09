#!/bin/sh

if [ -z "$1" ]; then
	exit
fi

BIN=`which $1`
echo `brew --cellar`/`readlink "$BIN" | sed 's|^../Cellar/\([^/]*\)/\([^/]*\)/.*|\1/\2|'`
