#!/bin/bash -x
maxval=0
minval=1000
for (( num=1 ; $num<=5 ; num++ ))
do
 n=$((100+$RANDOM%100))
 echo $n
 if [[ $maxval -lt $n ]]
 then
 maxval=$(($n))
 fi
 if [[ $minval -gt $n ]]
 then
 minval=$(($n))
 fi
done
echo "Maximum Number :" $maxval
echo "Minimum Number :" $minval
