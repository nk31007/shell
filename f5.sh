#!/usr/bin/env bash
#Purpose: Floating Point Arithmetic Operations
#Version: 1.0
#Created Date: Fri Nov 27 03:22:18 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
if [ $# -gt 3 ]
then
  echo "No of arguments should be less than three."
  exit 5
fi
a=$1
b=$2
c=$3
if [ "$b" == '+' ]
then
  echo "Floating Point Addition is: $(echo $a + $c|bc)"
elif [ "$b" == "-" ]
then
  echo "Floating Point Subtraction is: $(echo $a - $c|bc)"
elif [[ "$b" == * ]]
then
  echo "Floating Point Multiplication is $(echo $a \* $c|bc)"
elif [ "$b" == "/" ]
then
  echo "Floating Point Division is : $(echo "scale=4;$a / $c"|bc)"
elif [ "%b" == "%" ]
then
  echo "Floating point Modulus is : $(echo $a % $c|bc)"
else
  echo "Invalid Operator"
fi


#END#
