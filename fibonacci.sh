#! /bin/bash

#code to generate fibonacci series upto nth term

one=0
two=1
sum=0
echo -n "Enter the number of terms: "
read n
if [ $n -le 0 ]
then
	echo Invalid number of terms 
	exit 1
fi
for (( i = 1; i<=$n; i++ ))
do
	if [ $i -eq 1 ]
	then 
		echo $one
	elif [ $i -eq 2 ]
	then
		echo $two
	else
		sum=$[ $one + $two ]
		echo $sum
		one=$two
		two=$sum
	fi
done

