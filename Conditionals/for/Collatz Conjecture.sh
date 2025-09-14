# collatz conjecture

read -p "Enter the starting value of the sequence : " n

while (( n != 1 ))
do
	echo "$n"
	remainder=$((n % 2 ))
	if [[ $remainder -eq 0 ]] 
	then 
		n=$((n / 2 ))
	else 
		n=$((3*n + 1 ))
	fi
done
echo "1"
