#!/bin/bash

#!/bin/bash

summary="$2"
body="$3"

# avoid talking over
count=0
while :; do
#    [ "$counter" -eq 6 ] && break
    if pgrep -x "mimic" > /dev/null; then
        (( counter += 1 ))
        sleep 4s
    else
        # volume up and down can be anoying so we ingore it
        if [ "$summary" == "pa-applet" ]
          then    echo "ignore";
          else    mimic -t "$summary, $body" -voice slt;
        fi
        break
    fi
done
