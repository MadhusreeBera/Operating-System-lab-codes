#!/bin/bash
#code to print whether entered year is leap year or not using if-else

echo -n "Enter a year: "
read year
if [ $year -le 0 ]
then
	echo Invalid year
	exit 1
fi

if [ `expr $year % 100` -eq 0 ]
then
	if [ `expr $year % 400` -eq 0 ]
	then
		echo "Leap year"
	else
		echo "Not a leap year"
	fi
else
	if [ `expr $year % 4` -eq 0 ]
	then
		echo Leap year
	else
		echo Not a leap year
	fi
fi


#execute by ./leapyear1
#test cases {2012, 2400, 1996, -2017, 2019}
