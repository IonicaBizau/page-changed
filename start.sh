#!/bin/bash

oldHtml=""
newHtml=""

while true; do
    newHtml=idleTimeMillis=`curl $1`
    if [ "$newHtml" != "$oldHtml" ]
    then
        oldHtml=$newHtml;
        xdg-open $1
        play ./beep.wav
    fi
done
