#!/bin/ksh

esc=$'\033' && [ ${#esc} = 1 ] || esc=$(printf '\033')

for y in 4 10
do
	for z in 0 1 2 3 4 5 6 7
	do
		print -nr -- "${esc}[${y}${z}m   ${1}${esc}[0m"
	done

	print -r --
done
