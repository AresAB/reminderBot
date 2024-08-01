#!/bin/sh

repeat="y"

while [ $repeat = "y" ]; do
    for i in $(seq 1 $1); do
        sleep 1
    done

    notepad.exe 20-20-20.txt
    repeat="tmp"

    while [ $repeat != "y" ] && [ $repeat != "n" ]; do
        echo "Repeat? [y/n]"
        read repeat
    done
done
