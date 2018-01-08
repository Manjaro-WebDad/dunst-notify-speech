#!/bin/bash

summary="$2"
body="$3"

if [ "$summary" == "pa-applet" ]
then    summary="Adjusting Output Volume";
fi

if pgrep -x "mimic" > /dev/null; 
then     sleep 2s && mimic -t "$summary, $body" -voice slt && sleep 5s; 
else     mimic -t "$summary, $body" -voice slt
fi


