#!/bin/bash -x
echo "Enter the value in inch"
read inch
feet=$(($inch/12))
echo "Result:$inch inches = $feet feet"
