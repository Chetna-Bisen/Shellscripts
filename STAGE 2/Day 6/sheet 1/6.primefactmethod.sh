#!/bin/bash 
echo "enter a number"
read n
for (( i=2;i<=$n*$n; i++ ))
do
    while [ $((n%i)) == 0 ]
    do
        echo "Prime factors are:$i"
        n=$((n/$i))
    done
done

