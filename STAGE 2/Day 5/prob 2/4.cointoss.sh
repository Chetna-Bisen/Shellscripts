#!/bin/bash -x
tosscoin=$((RANDOM%2+1))

if [ $tosscoin -eq 1 ]
then
   echo "head"
else
   echo "tail"
fi
