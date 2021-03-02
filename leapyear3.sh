#!/bin/bash

#checking if entered year is leap year in a single line using logical operators and conditionals

echo -n "Enter year: "
read year
[[ $year -le 0 ]] && ( echo Invalid year ) || ( [[ `expr $year % 100` -eq 0 ]] && ( [[ `expr $year % 400` -eq 0 ]] && echo leap year || echo not leap year ) || ( [[ `expr $year % 4` -eq 0 ]] && echo leap year || echo not leap year ) )

#execute ./leapyear3.sh
# test cases {2012, 2400, 2019, 1900, -2017}
