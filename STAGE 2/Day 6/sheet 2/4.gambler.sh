#!/bin/bash
randomval=$((RANDOM))
minval=100
maxval=100
echo "Game has begun"
echo "Gambler invested his money of Rs 100"

while [[ $maxval -le 200 && $minval -ge 1 ]]
do
     n1=$(expr $randomval % 10)
     n2=$(expr $n1 % 2)

     if [ $n2 -eq 0 ]
     then
          maxval=$(expr $maxval + 1)
     elif [ $n2 -eq 1 ]
     then
          minval=$(expr $minval - 1)
     else
         echo "dummy"
    fi;

    if [[ $maxval -ge 200 ]]
    then
        echo "Gambler reached the goal of 200 "
        break

    elif [ $minval -eq 1 ]
    then
        echo  "Gambler has no more money to gamble"
       break
    fi
done
