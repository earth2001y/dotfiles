#!/bin/bash

MODULE_HOME=/opt/local/Modules/3.2.9

# module
if [ -z "$MODULE_HOME" ]; then
	source $MODULE_HOME/init/bash
#	export PATH=$MODULE_HOME/bin:$PATH
#	export MODULEPATH=$MODULE_HOME/modulefiles
 	export MANPATH=$MODULE_HOME/share/man:$MANPATH
fi

