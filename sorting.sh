#!/bin/bash

#bubble sort

echo -n Enter array size: 
read n
if [ $n -le 0 ]
then 
	echo invalid array size
	exit 1
fi
echo Enter array elements
for(( i=0; i<$n; i++ ))
do
	read -r arr[$i]
done
echo Array: ${arr[*]}

for (( i=0; i<$n; i++ ))
do
	for (( j=0; j<$n-$i-1; j++ ))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$(( j+1 ))]=$temp
		fi
	done
done
echo Sorted Array: ${arr[*]}
