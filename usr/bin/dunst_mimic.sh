#!/bin/bash

summary="$2"
body="$3"

# fix for pulse applet
if [ "$summary" == "pa-applet" ]
then    summary="Adjusting Output Volume";
fi

# avoid talking over
count=0
while :; do
#    [ "$counter" -eq 6 ] && break
    if pgrep -x "mimic" > /dev/null; then
        (( counter += 1 ))
        sleep 4s
    else
        mimic -t "$summary, $body" -voice slt
        break
    fi
done
