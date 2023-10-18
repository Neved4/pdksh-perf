#!/usr/bin/env mksh

for y in 4 10
do
	for z in 0 1 2 3 4 5 6 7
	do
		printf "\033[%s%sm   %s\033[0m" "$y" "$z" "$1"
	done
	printf '\n'
done
printf '\n'
