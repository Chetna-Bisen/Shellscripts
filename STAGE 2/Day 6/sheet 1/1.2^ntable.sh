#!/bin/bash -x
echo "Enter a number"
read num
for (( i=1;i<=num;i++))
do
   val=$((2**$i))
   echo $i $val
done



