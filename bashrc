#!/bin/bash

sysname=`uname`

if [ "_$sysname" == "_CYGWIN_NT-5.1" ]; then
	alias ls='ls -h --color=tty' # classify files in colour
elif [ "_$sysname" == "_Darwin" ]; then
	alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
	alias Visio='/Applications/Visio.app/Contents/MacOS/Visio'
	alias ls='ls -G'
fi

alias hip=`which tail` # answer for https://twitter.com/igaiga555/status/276291925634592768

# make daily tempolary directory
mkdir -p `date +tmp/%Y%m/%d`

function convert-mp3() {

	local input=''
	local output=''

	if [ $# -eq 1 ]; then
		local input="$1"
		local output="$1.mp3"
	elif [ $# -eq 2 ]; then
		local input="$1"
		local output="$2"
	else
		echo 'convert-mp3 input [output]'
		return 0;
	fi

	ffmpeg -y -i "$input" -acodec mp3 -ar 44100 -ab 192 "$output"
}

