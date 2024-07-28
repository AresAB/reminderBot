#!/bin/sh

five=5
three=3
var=$(( $five - $three ))

if [ $var -eq 2 ]; then
echo "test complete"
fi
