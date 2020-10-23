#!/bin/bash -x
echo  "Enter Date "
read date
echo "Enter Month "
read month
if [[ $month -eq 3 && $date -gt 20 && $date -le 31 ]]
then
    echo "True"
elif [[ $month -eq 4 &&  $date -le 30 ]]
then
    echo "True"
elif [[ $month -eq 5 && $date -lt 31 ]]
then
    echo "True"
elif [[ $month -eq 6 && $date -lt 20 ]]
then
     echo "True"
else
     echo "False"
fi

