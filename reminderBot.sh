#!/bin/sh

repeat="y"

while [ $repeat = "y" ]; do

for i in $(seq 1 $1); do
sleep 1
done

code

repeat="tmp"

while [ $repeat != "y" ] && [ $repeat != "n" ]; do

echo "Repeat? [y/n]"
read repeat

done

done
