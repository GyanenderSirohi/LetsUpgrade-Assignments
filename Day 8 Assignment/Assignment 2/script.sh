#!/bin/bash
echo "Please enter the number "
read input
number=0
while [ $input -gt 0 ]
do number=$(expr $number \* 10)
i=$(expr $input % 10)
number=$(expr $number + $i)
input=$(expr $input / 10)
done
echo "The new number is $number"
