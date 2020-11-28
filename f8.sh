#!/usr/bin/env bash
#Purpose: SHELL Array Variables
#Version: 1.0
#Created Date: Fri Nov 27 15:02:25 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
set -x
os=(dos windows unix linux)
echo "The length of the Array is : ${#os[@]}"
echo "The Indices are : ${!os[@]}"
echo "The Third Element is : ${os[3]}"
echo "Adding Another Element is: os[${#os[@]}]='mac'"
os[${#os[@]}]='mac'
echo "The length of os array is: ${#os[@]}"
echo "The Array is: ${os[@]}"
#END#
