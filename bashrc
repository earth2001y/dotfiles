#!/bin/bash

sysname=`uname`

if [ "_$sysname" == "_CYGWIN_NT-5.1" ]; then
	alias ls='ls -h --color=tty' # classify files in colour
elif [ "_$sysname" == "_Darwin" ]; then
	alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
	alias Visio='/Applications/Visio.app/Contents/MacOS/Visio'
	alias ls='ls -G'
fi

