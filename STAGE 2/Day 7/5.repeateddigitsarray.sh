#!/bin/bash
for (( i=1;i<=100;i++ ))
do
  val=$((i%11))
 if [ $val -eq 0 ]
 then
      array[i]=$val
 else
      echo array[i]++
 fi
done
echo "Array :${!array[@]}"






