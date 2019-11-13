#!/bin/bash
if [ -z "$1" ];
then
REMOTEPORT=$(netstat -an | grep LISTEN | grep 127.0.0.1:[3-4][0-9][0-9][0-9][0-9] | grep -o [3-4][0-9][0-9][0-9][0-9])
rdesktop -g 1600x900 localhost:$REMOTEPORT
else
rdesktop -g 1600x900 localhost:$1
fi
