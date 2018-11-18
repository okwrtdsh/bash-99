#!/bin/bash

function last() {
	local current=''
	for line in $(cat -); do
		current=$line
	done
	echo $current
}

if [ -p /dev/stdin ]; then
	cat -
else
	echo $@
fi | last
