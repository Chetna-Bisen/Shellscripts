#!/bin/bash
declare -A year92                       #Initialising the Dictionaries
for (( i=1;i<=12;i++ ))
do
   year92+=([$i]=0)
done

declare -A year93
for (( i=1;i<=12;i++ ))
do
   year93+=([$i]=0)
done


for (( i=1;i<=50;i++ )) # Number of Individuals Born in Year 1992 & 1993
do
   born=$(( RANDOM % 12 + 1 ))
   ((year92[$born]++))
   born=$(( RANDOM % 12 + 1 ))
   ((year93[$born]++))
done
echo "Individuals Born in 1992 :"

for (( i=1;i<=12;i++ ))
do
echo -n "${year92[$i]} "
done
echo ""
echo "Individuals Born in 1993 :"


for (( i=1;i<=12;i++ ))
do
echo -n "${year93[$i]} "
done
echo ""
echo -e "Month\t\t\t1992\t\t\t1993"

for (( i=1;i<=12;i++ ))
do
  case $i in
     1)Month="January" ;;
     2)Month="February" ;;
     3)Month="March" ;;
     4)Month="April" ;;
     5)Month="May" ;;
     6)Month="June" ;;
     7)Month="July" ;;
     8)Month="August" ;;
     9)Month="September" ;;
     10)Month="October" ;;
     11)Month="November" ;;
     12)Month="December" ;;
  esac
echo -e "$Month\t\t${year92[$i]}\t\t${year93[$i]}"
done
