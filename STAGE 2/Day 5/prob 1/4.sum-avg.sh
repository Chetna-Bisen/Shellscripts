#!/bin/bash -x
num1=$((10+$RANDOM%90))
echo $num1
num2=$((10+$RANDOM%90))
echo $num2
num3=$((10+$RANDOM%90))
echo $num3
num4=$((10+$RANDOM%90))
echo $num4
num5=$((10+$RANDOM%90))
echo $num5

sum=$(($num1 + $num2 + $num3 + $num4 + $num5))
echo $sum

avg=$(($sum/5))
echo $avg




