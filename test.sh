#!/bin/sh

var=$(( 5 % 3 ))

if [ $var -eq 2 ]; then
echo "test complete"
fi
