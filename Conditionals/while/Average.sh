#!/bin/sh

sum=0
count=0

while true
do 
	echo -n "Enter the number :"
	read num 
	if [[ "$num" -eq "done" ]]
	then
		echo "Sum is $sum"
		break;
	fi 

	sum=$((sum + num))
	count=$((count + 1))
done

if [[ "$count" -eq 0 ]]
then
	echo "No numbers entered"
else
	echo "Average : "
	echo "$((sum / count))"
fi
