# n fibonacci numbers

#!/bin/bash

# Read number of terms
read -p "Enter number of terms: " N

a=0
b=1

echo "Fibonacci sequence up to $N terms:"

for (( i=1; i<=N; i++ ))
do
    echo -n "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done

echo

