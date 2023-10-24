#!/bin/ksh

esc=$'\033' && [ ${#esc} = 1 ] || esc=$(printf '\033')

y=4
while [ $y -le 10 ]
do
	z=0
	while [ $z -le 7 ]
	do
		print -nr -- "${esc}[${y}${z}m   ${1}${esc}[0m"
		z=$((z+1))
	done

	print -r --

	y=$((y+6))
done
