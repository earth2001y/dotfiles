#!/bin/bash

MODULE_HOME=/opt/Modules/3.2.9

# module
if [ -n "$MODULE_HOME" -a -d "$MODULE_HOME" ]; then
# export MODULEPATH=$HOME/etc/modulefiles:$MODULE_HOME/modulefiles
  export MODULEPATH=$HOME/etc/modulefiles
  export MANPATH=$MODULE_HOME/share/man:$MANPATH
  source $MODULE_HOME/init/bash
fi

