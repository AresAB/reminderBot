#!/bin/sh

#while true; do
echo $1
echo $SECONDS
timer=$(( $SECONDS - $1 ))
timer=$(( $timer % 5 ))

if [ $timer -eq 0 ]; then
echo "timer reached"
fi

sleep 1
#done
