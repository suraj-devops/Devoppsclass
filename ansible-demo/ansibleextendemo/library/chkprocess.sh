#!/bin/bash

# This module checks if the pid of the specified
# process exists. If not, it returns a failure msg

source $1

pid=`pidof $process`
if [[ -n $pid ]]; then
    printf '{
        "msg" : "%s is running with pid %s",
        "changed" : 1
    }' "$process" "$pid"
else
    printf '{
        "msg" : "%s process not running",
        "failed" : "True"
    }' "$process"
fi
