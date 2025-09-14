read -p "Enter a number : " number

temp=1
for (( i = 1; i <= number ; i++ ))
do 
	temp=$((temp*i))
done

echo "Factorial of $number : $temp"
