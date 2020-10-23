#!/bin/bash -x
length=60
breadth=40
area=$(($length * $breadth))
echo "area in squarefeet :$area"
Meters=`awk 'BEGIN{print("%0.2f",'$area' / 10.764)}'`
echo "In square meter : $Meters"
