#!/bin/bash

#!/bin/bash

# Strong numbers between 1 and 500
for ((n=1; n<=8000; n++))
do
    temp=$n
    sum=0

    while [ $temp -gt 0 ]
    do
        digit=$((temp % 10))

        # factorial of digit using only a loop
        fact=1
        for ((i=1; i<=digit; i++))
        do
            fact=$((fact * i))
        done

        sum=$((sum + fact))
        temp=$((temp / 10))
    done

    if [ $sum -eq $n ]; then
        echo "$n is a Strong number"
    fi
done

