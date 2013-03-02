#!/bin/sh

sysname=`uname`

for s in $HOME/etc/profile.d/*.sh ; do
	if test -r "$s"; then
		if test -n "$PS1"; then
			. $s
		else
			. $s >/dev/null 2>&1
		fi
	fi
done

if [ "$sysname" == "Darwin" ]; then
  export LANG='ja_JP.UTF-8'
elif [ "$sysname" == "Linux" ]; then
  export LANG='ja_JP.UTF-8'
fi

export PS1='[\u:\W]$ '
#export PS1='[\u@\h:\W]$ '
#export PS1="[\u@\h:\w]$ "

export EDITOR=`which vi`
export PATH=$HOME/bin/:$PATH

