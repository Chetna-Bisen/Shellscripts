#!/bin/bash -x
echo "enter a number"
read n
for (( i=2;i<=$n*$n; i++ ))
do
    while [ $((n%i)) == 0 ]
    do
        echo "Prime factors are:$i"
        n=$((n/$i))
        primearray[$i]=$((i))
    done
done
echo "Array of prime factors: ${primearray[@]}"
