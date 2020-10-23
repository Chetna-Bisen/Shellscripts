#!/bin/bash
echo "Enter a number "
read n
sum=0
for (( i=1;i<=n;i++ ))
do
   harmonicval=`awk 'BEGIN{print 1/'$i'}'`
   echo $harmonicval
   sum=$sum+$harmonicval
done
echo $sum





