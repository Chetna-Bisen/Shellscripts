#!/bin/bash 
echo "Enter a number"
read num
range=256
c=0
r=1

while [ $num -ne $c ]
do
  r=`awk 'BEGIN{print('$r'*2)}'`
  c=`awk 'BEGIN{print('$c'+1)}'`
   if [ $r -gt $range ]
   then
      echo "Given power is exceeding the range"
   else
      echo " Power of 2^$c: $c $r"
   fi
done
