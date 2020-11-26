#!/usr/bin/env bash
#Purpose: Three Ways of Logical OR Operator
#Version: 1.0
#Created Date: Thu Nov 26 16:02:05 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
if [ $1 -ge 10 -a $1 -lt 20 ]
then
 echo "It is greater than ten or less than 20"
else
 echo "It is greater than ten but not less than 20 "
fi
if [ $1 -ge 10 ]||[ $1 -lt 20 ]
then
 echo "It is greater than ten or less than 20"
else
 echo "It is greater than ten but not less than 20 "
fi
if [[ $1 -ge 10 || $1 -lt 20 ]]
then
 echo "It is greater than ten or less than 20"
else
 echo "It is greater than ten but not less than 20 "
fi
#END#
