#!/bin/bash

function nth() {
	local N=$1
	local current=''
	local cnt=0
	for line in $(cat -); do
		current=$line
		if [ $cnt = $N ]; then
			break
		fi
		let cnt++
	done
	echo $current
}

args=""
while [ $# -gt 0 ]; do
	case "$1" in
		-N)
			N="$2"
			shift 2
			;;
		-N=*)
			N="${1#*=}"
			shift
			;;
		*)
			args="$args $1"
			shift
			;;
	esac
done

if [ -p /dev/stdin ]; then
	cat -
else
	echo $args
fi | nth $N
