# powers of a and b wheren base b is non negative

read -p "Enter the base : " base
read -p "Enter the exponent : " exponent

temp=1

for(( i = 0; i < exponent ;  i++ ))
do
	temp=$((temp*base))
done

echo "$exponent raised to the power $base is $temp."

