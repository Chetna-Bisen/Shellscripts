#!/bin/bash -x

# To find 10 random 3 digit numbers
for (( i=0;i<=9;i++ ))
do
  value=$((100+RANDOM%99))
  array[$i]=$value
done
echo "10 Random 3 digit numbers Array :${array[@]}"

# To find secondlargest element from array
largest=${array[0]}
secondLargest=0

for(( i=1; i < ${#array[@]}; i++ ))
do
  if [ ${array[i]} -gt $largest ]
  then
    secondLargest=$largest
    largest=${array[i]}
  elif [ ${array[i]} -gt $secondLargest ]
  then
    secondLargest=${array[i]}
  fi
done

echo "Array :${array[@]}"
echo "secondLargest element in array is = $secondLargest"

# To find secondsmallest element in array
smallest=${array[0]}
secondSmallest=$smallest

for(( i=1; i < ${#array[@]}; i++ ))
do
  if [ ${array[i]} -lt $smallest ]
  then
    secondSmallest=$smallest
    smallest=${array[i]}
  elif [ ${array[i]} -lt $secondSmallest ]
  then
    secondSmallest=${array[i]}
  fi
done

echo "Array :${array[@]}"
echo "secondSmallest element in array is = $secondSmallest"

