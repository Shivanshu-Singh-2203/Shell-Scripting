#!/bin/bash

echo "Checking Armstrong Number ..."

while true
do 
	echo -n "Enter your number : "
	read number

	if [[ "$number" = "done" ]]
	then 
		echo "Exiting ..."
		break 
	else 
		i=$((number))
		sum=0
		while [[ "$i" -ge 1 ]]
		do
			temp=$(( i%10 ))
			sum=$((sum + temp*temp*temp))
			i=$((i/10))
		done

		if [[ "$sum" = "$number" ]]
		then
			echo "$number is an Armstrong number."
		else 
			echo "$number is not an Armstrong number."
		fi 
	fi 
done

			
