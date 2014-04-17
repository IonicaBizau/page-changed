#!/bin/bash

oldHtml=""
newHtml=""

while true; do
    newHtml=idleTimeMillis=`curl $1`
    if [ "$newHtml" != "$oldHtml" ]
    then
        oldHtml=$newHtml;
        play ./beep.wav
    fi
done
