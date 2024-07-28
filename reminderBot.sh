#!/bin/sh

let timer=$SECONDS%$1

if [ $timer -eq 0 ]; then
echo "timer reached"
fi
