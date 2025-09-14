#!/bin/bash

echo "Enter the upper limit : "

read numbers

for (( i = 2; i <= numbers; i++ )); do
    flag=0
    for (( j = 2; j < i; j++ )); do
        if (( i % j == 0 )); then
            flag=1
            break
        fi
    done
    if [[ $flag -eq 0 ]]; then
        echo "$i"
    fi
done

