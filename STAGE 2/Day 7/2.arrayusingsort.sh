#!/bin/bash -x
for (( i=0;i<10;i++ ))
do
   val=$((100+RANDOM%99))
   arr[$i]=$val
done
echo "Array: ${arr[@]}"
temp=0
for (( i=0; i<10; i++ ))
do
   for (( j=i+1; j<10; j++ ))
   do
   if [ ${arr[i]} -gt ${arr[$((j))]} ]
   then
   temp=${arr[i]}
   arr[$i]=${arr[$((j))]}
   arr[$((j))]=$temp
   fi
   done
done
echo "Sorted Array:${arr[@]} "
echo "Second smallest number in array:${arr[1]} "
echo "second largest number in array:${arr[8]} "
