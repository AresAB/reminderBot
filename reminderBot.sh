#!/bin/sh

m_flag=false
expecting_m_input=false
r_flag=false

FlagHandler(){
	read -a flag_array <<< $(flaghandler.sh $1)

	for flag in ${flag_array[*]}
	do
		case $flag in
			m | minute)
				m_flag=true
                expecting_m_input=true
				;;
			r | repeat)
				r_flag=true
				;;
		esac
	done
}

if [ $# -lt 2 ]; then
    exit 1
fi

while [ $# -gt 2 ]; do
    if [ $expecting_m_input == true ]; then
		textTMP=$1
		expecting_m_input=false
		continue
	fi
	FlagHandler $1
	shift
done

text=$1
timeMax=$2
if [ $m_flag == true ]; then
    if [ $expecting_m_input == false ]; then
        text=$textTMP
        minutes=$(( $1 * 60 ))
        timeMax=$(( $timeMax + $minutes ))
    else
        timeMax=$(( $timeMax * 60 ))
    fi
fi
repeatReset="a"
if [ $r_flag == true ]; then
    repeatReset="y"
fi

repeat="y"

while [ $repeat = "y" ]; do
    for i in $(seq 1 $timeMax); do
        sleep 1
    done

    ./win-notify-send.bat $text
    repeat=$repeatReset

    while [ $repeat != "y" ] && [ $repeat != "n" ]; do
        echo "Repeat? [y/n]"
        read repeat
    done
done
