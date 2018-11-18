#!/usr/bin/env bats
load helper

@test "P01" {
	run bash -c "cat ./tests/input01.txt | ./src/P01.sh"
	[ "${status}" -eq 0 ]
	[ "${output}" = "8" ]
}

@test "P02" {
	run bash -c "cat ./tests/input01.txt | ./src/P02.sh"
	[ "${status}" -eq 0 ]
	[ "${output}" = "5" ]
}

@test "P03" {
	run bash -c "cat ./tests/input01.txt | ./src/P03.sh -N 2"
	[ "${status}" -eq 0 ]
	[ "${output}" = "2" ]
}

@test "P04" {
	run bash -c "cat ./tests/input01.txt | ./src/P04.sh"
	[ "${status}" -eq 0 ]
	[ "${output}" = "6" ]
}

@test "P05" {
	run bash -c "cat ./tests/input01.txt | ./src/P05.sh"
	[ "${status}" -eq 0 ]
	[ "${output}" = "$(cat ./tests/input01.txt | tac)" ]
}
