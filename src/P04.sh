#!/bin/bash

function length() {
	local cnt=0
	for _ in $(cat -); do
		cnt=$(( cnt + 1 ))
	done
	echo $cnt
}

if [ -p /dev/stdin ]; then
	cat -
else
	echo $@
fi | length
