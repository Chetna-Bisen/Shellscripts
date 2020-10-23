#!/bin/bash
echo "Coin toss game"
head=0
tail=0
while [ $head -lt 11 -a $tail -lt 11 ]
do
	result=$(($RANDOM%2))
	if [ $result -eq 0 ]
	then
	((head++))
	echo $head
	else
	((tail++))
	echo $tail
	fi
done


