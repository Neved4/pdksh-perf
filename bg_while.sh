#!/usr/bin/env mksh

y=4
while [ $y -le 10 ]
do
    z=0
    while [ $z -le 7 ]
    do
        printf "\033[%s%sm   %s\033[0m" "$y" "$z" "$1"
        z=$((z+1))
    done
    printf '\n'
    y=$((y+6))
done
printf '\n'
