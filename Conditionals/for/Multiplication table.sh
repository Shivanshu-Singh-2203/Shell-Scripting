#!/bin/bash

read -p "Enter the number : " number
read -p "Multiples count : " count

for (( i = 1; i <= count; i++ ));
do
	multiple=$((number * i))
	echo "$number X $i = $multiple"
done

