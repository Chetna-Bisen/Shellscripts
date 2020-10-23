#!/bin/bash -x
arr=( -1 -2 3 )
total=0
for i in "${arr[@]}"
do
    sum=$((total+arr[i]))
done
echo " Sum: $sum "
check=$sum
if [ $check -eq 0 ]
then
  echo "Array:${arr[@]} and there Sum is zero"
fi
