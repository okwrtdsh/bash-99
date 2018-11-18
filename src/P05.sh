#!/bin/bash

function reverse() {
	local i=0
	local arr=()

	for line in $(cat -); do
		array+=( $line )
		let i++
	done

	while [ $i -gt 0 ]; do
		let i--
		echo ${array[i]}
	done
}

if [ -p /dev/stdin ]; then
	cat -
else
	echo $@
fi | reverse
