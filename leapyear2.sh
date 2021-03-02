#!/bin/bash
#checking if entered year is leap year using switch case

echo -n "Enter year: "
read year
if [ $year -le 0 ]
then
	echo Invalid year
	exit 1
fi
case "`expr $year % 100`" in
	0) case "`expr $year % 400`" in
		0) echo Leap year
		;;
		*)echo Not leap year
	esac
	;;
	*) case "`expr $year % 4`" in
		0) echo Leap year
		;;
		*) echo Not leap year
	esac
esac

#run: ./leapyear2.sh
#test case {2004, 2007, 2400, 1900, -2017}
