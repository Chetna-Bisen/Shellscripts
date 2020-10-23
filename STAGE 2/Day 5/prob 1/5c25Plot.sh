#!/bin/bash -x
length=60
breadth=40
area=$(($length * $breadth))
echo "area in squarefeet :$area"
Acres=`awk 'BEGIN{print('$area' / 43560)}'`
echo "In acres : $Acres"
num=25
echo $num
total=`awk 'BEGIN{print('$num' * '$Acres')}'`
echo "area of 25 plots : $total"
