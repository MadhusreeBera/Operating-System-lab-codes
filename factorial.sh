#!/bin/bash
#code to find factorial of entered number
#enter a number
echo -n "Enter a non-negative number: "
read n
if [ $n -lt 0 ]
then
	echo Invalid input
	exit 1
fi
f=1
for(( i=2; i<=n; i++ ))
do
	f=`expr $f \* $i`
done
echo Factorial of $n is $f
