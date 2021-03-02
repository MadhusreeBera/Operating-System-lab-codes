#!/bin/bash

#sum of n natural numbers n given in command line
if [ $# -eq 0 ]
then
	echo No argument
	exit 1
elif [ $# -gt 1 ]
then
	echo Invalid number of arguments
	exit 2
fi
n1=$[ $1 + 1 ]
p=$[ $1 * $n1 ]
ans=$[ $p / 2 ]
echo $ans
