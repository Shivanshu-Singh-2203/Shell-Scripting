# finding perfect numbers

read -p "Enter the upper number : " upper

for ((i =1 ; i <= upper ; i ++))
do
	sum_of_factors=0
	for(( j = 1; j <=i/2 ; j ++ ))
	do
		if (( i % j == 0 ))
		then
			sum_of_factors=$((sum_of_factors + j))
		fi 
	done
	
	if [[ $sum_of_factors -eq $i ]]
	then 
		echo "$i"
	fi 

done


