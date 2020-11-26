#!/usr/bin/env bash
#Purpose: Basic Arithmetic Operations
#Version: 1.0
#Created Date: Thu Nov 26 16:27:08 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
##Addition operation
a=$1
b=$2
c=$3
if [[ $2 == "+" ]]
then
 echo "Addition of given two numbers is : $((a + c))"
elif [[ $2 == "-" ]]
then
 echo "Subtraction of Given two numbers is : $((a-c))"
elif [[ $2 == * ]]
then
 echo "Multiplication of Given two numbers is : $((a*c))"
elif [[ $2 == "/" ]]
then
 echo "Division of Given two numbers is : $((a/c))"
elif [[ $2 == "%" ]]
then
 echo "modulus of Given two numbers is : $((a%c))"
else
 echo "Operator is not supported"
fi
 

#END#
