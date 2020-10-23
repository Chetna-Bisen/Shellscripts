#!/bin/bash -x
ispalindrome(){
s=0
rev=""
temp=$n
while [ $n -gt 0 ]
do
    s=$(( $n % 10 ))
    n=$(( $n / 10 ))
    rev=$( echo ${rev}${s} )
done
if [ $temp -eq $rev ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
}
echo "enter number 1"
read n
ispalindrome $n
echo "enter number 2"
read n
ispalindrome $n


