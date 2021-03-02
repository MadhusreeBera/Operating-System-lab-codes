#!/bin/bash

#code to find sum of digits of entered number

echo -n "Enter number: "
read n
sum=0
while [ $n -ne 0 ]
do
	r=$[ $n % 10 ]
	sum=$[ $sum + $r ]
	n=$[ $n / 10 ]
done
[[ $sum -lt 0 ]] && sum=$[ $sum * -1 ]
echo Sum of digits: $sum

#run : ./sumOfDigits.sh
#test case: { 111, 685, 4861, -5674, 450 }
