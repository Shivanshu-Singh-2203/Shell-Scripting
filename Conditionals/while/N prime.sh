#!/bin/bash
echo -n "Enter n: "
read n
count=0
num=2

while [ $count -lt $n ]
do
    is_prime=1
    i=2
    while [ $i -le $((num / 2)) ]
    do
        if [ $((num % i)) -eq 0 ]; then
            is_prime=0
            break
        fi
        i=$((i + 1))
    done

    if [ $is_prime -eq 1 ]; then
        echo -n "$num "
        count=$((count + 1))
    fi
    num=$((num + 1))
done
echo


