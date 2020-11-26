#!/usr/bin/env bash
#Purpose: Three Ways of Logical and Operator
#Version: 1.0
#Created Date: Thu Nov 26 15:16:37 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
if [[ $1 -ge 10 && $2 -ge 30 ]]
then
 echo "It is correct"
else
 echo "It is not true"
fi
if [ $1 -ge 10 -a $2 -ge 30 ]
then
 echo "It is correct"
else
 echo "It is not true"
fi
if [ $1 -ge 10 ]&&[  $2 -ge 30 ]
then
 echo "It is correct"
else
 echo "It is not true"
fi
#END#
