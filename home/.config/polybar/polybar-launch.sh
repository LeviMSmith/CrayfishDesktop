#!/bin/bash

#Polybar
polybar-msg cmd quit

for m in $(polybar --list-monitors | tr -d ' '); do
    mf=$(echo $m | cut -d":" -f1)
    if [ -z $(echo $m | grep primary) ]
    then
        MONITOR=$mf polybar --reload secondary -q &
    else
        MONITOR=$mf polybar --reload main -q &
    fi
done
