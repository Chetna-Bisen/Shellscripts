#!/bin/bash
low=1
high=100
while [ "$low" -le $high ]
do
mid_val=$(((low+high)/2))
echo "$mid_val"
echo "not your number"
echo "press 1 if your number is less than $mid_val"
echo "press 2 if your number is more than $mid_val"
read r
   if [ $r -eq 1 ]
   then
     high=$((mid_val-1))
   elif [ $r -eq 2 ]
   then
     low=$((mid_val+1))
    else
    echo "Number is out of range"
   fi
done
echo "your number is $high"

