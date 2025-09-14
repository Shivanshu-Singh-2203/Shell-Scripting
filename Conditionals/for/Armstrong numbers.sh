# Armstrong Numbers

for (( i = 101; i < 1000; i ++ ))
do 
	temp=1
	temp2=$((i))
	sum=0
	while (( temp2 > 0 ))
	do
		remainder=$(( temp2 % 10 ))
		sum=$(( sum + remainder*remainder*remainder))
		temp2=$((temp2 / 10 ))

	done

	if (( sum == i ))
	then
		echo  "$i "
	fi
done

