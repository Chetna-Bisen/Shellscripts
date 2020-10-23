#!/bin/bash

declare -A rolldice

rolldice=( [n1]=0  [n2]=0  [n3]=0  [n4]=0  [n5]=0  [n6]=0 ) # Initialising the dictionary key and value to 0
MaxThrow=10
echo " Diceface :${!rolldice[@]}"
echo " KeyValue :${rolldice[@]}"


while [[ ${rolldice[n$diceface]} -lt $MaxThrow ]]    # Rolling the dice and track on count
do
   diceface=$(( RANDOM%6+1 ))

   if [ $diceface -eq 1 ]
   then
         ((rolldice[n1]++))

   elif [ $diceface -eq 2 ]
   then
         ((rolldice[n2]++ ))

   elif [ $diceface -eq 3 ]
   then
         ((rolldice[n3]++))

   elif [ $diceface -eq 4 ]
   then
         ((rolldice[n4]++))

   elif [ $diceface -eq 5 ]
   then
         ((rolldice[n5]++))

   else
        ((rolldice[n6]++))
   fi
done

echo -e  "Diceface\tNo. of counts"
for key in "${!rolldice[@]}"                     #to display elements of dictionary
do
  echo -e "$key\t\t\t${rolldice[$key]}"
done



if [[ ${rolldice[n$diceface]} -eq MaxThrow ]]    #calculating maximum count for diceface
then
    max=n$diceface
fi


min=10                                            #calculating minimum count for diceface
for key in "${!rolldice[@]}"
do
   if [[ ${rolldice[$key]} -lt $min ]]
   then
      min="${rolldice[$key]}"
      diceface=$key
   fi
done

echo "Diceface $diceface have minimum count as $min"
echo "Diceface $max have maximum count as $MaxThrow"
