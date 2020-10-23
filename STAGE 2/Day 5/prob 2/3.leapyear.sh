#!/bin/bash -x
echo "Enter a year"
read yy

if [[ $yy%400 -eq 0 || $yy%4 -eq 0 && $yy%100 -ne 0  ]]
then
   echo "It is a leap year"
else
   echo "It is not a leap year"
fi
