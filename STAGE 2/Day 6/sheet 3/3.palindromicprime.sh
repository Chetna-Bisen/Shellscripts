#!/bin/bash
checkprime(){
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
}
echo "CHECK FOR PRIME"
echo "enter a number"
read n
checkprime $n

checkpalindrome(){
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
echo "CHECK FOR PALINDROME "
echo "Enter a number"
read n
checkpalindrome $n

checkpalindromicprime(){
for (( i=2;i<=n/2;i++ ))
do
  if [ $((n%i)) -eq 0 ]
  then
    echo" Given palindrome is not a prime number"
    exit 0
  fi
done
echo "Given palindrome is a prime number"
}
echo "CHECK FOR PALINDROMIC PRIME"
checkpalindromicprime $n
