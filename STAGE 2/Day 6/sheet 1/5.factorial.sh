#!/bin/bash -x
echo "Enter a number"
read number

fact=1

while [ $number -gt 1 ]
do
  fact=$((fact * number))
  number=$((number - 1))
done

echo "Factorial of given number:$fact"
