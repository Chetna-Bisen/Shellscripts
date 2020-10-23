#!/bin/bash
echo "Enter a number"
read n
flag=0
for ((i=2; $i<= $n/2; ++i ))
do
   if [ $(($n%$i)) -eq 0  ]
   then
       flag=1
   fi
done

if [ $flag -eq 0 ]
then
     echo " Number is Prime number"
else
    echo "Number not a prime number"
fi
