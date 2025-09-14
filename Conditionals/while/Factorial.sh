#!/bin/bash

echo  "Computing Factorial"

while true
do 
	echo -n "Enter your number : "
	read number

	if [[ "$number" = "done" ]]
	then 
		echo "Exiting ..."
		break 
	else
		i=1
		fact=1
		while [[ "$i" -le "$number" ]]; do
			fact=$((fact * i))
			i=$(( i + 1))
		done
		echo "Factorial of $number : $fact"
	fi 
done
		
