#!/bin/bash

function penultimate() {
	local current=''
	local prev=''
	for line in $(cat -); do
		prev=$current
		current=$line
	done
	echo $prev
}

if [ -p /dev/stdin ]; then
	cat -
else
	echo $@
fi | penultimate
