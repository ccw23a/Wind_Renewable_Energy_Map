#!/bin/sh
#

SCRIPT=`readlink -f $0`
SCRIPTDIR=`dirname $SCRIPT`

java -Xms512m -Xmx2000m -jar $SCRIPTDIR/jars/Panoply.jar "$@"

# If you are on a single-user Linux system and somehow find multiple instances of Panoply
# running on your computer, change the above line to include a -single flag, like this:
#   java -Xms512m -Xmx2000m -jar $SCRIPTDIR/jars/Panoply.jar -single "$@"

# If you are on a multi-user Linux system and your use of Panoply collides with someone
# else trying to use it at the same time, do not apply the -single flag. Instead, apply
# -multi, like this:
#   java -Xms512m -Xmx2000m -jar $SCRIPTDIR/jars/Panoply.jar -multi "$@"

# You can suggest to the Java engine how much memory heap it should request from the operating
# system by using -Xms and -Xmx command-line options. The commands above request a minimum of
# 512 MB of memory heap and a maximum of 2000 MB (2GB). Although you may want to increase the
# maximum if working with very large data arrays, we do not recommend specifying a value
# greater than a quarter of the physical memory installed.
