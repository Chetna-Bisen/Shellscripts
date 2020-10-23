#!/bin/bash -x
randomnum1=$((RANDOM))
echo randomnum1
randomnum2=$((RANDOM))
echo randomnum2

add=$(($randomnum1+$randomnum2))
echo "RESULT=$add"
