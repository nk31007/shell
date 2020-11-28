#!/usr/bin/env bash
#Purpose: Trap Command Usage
#Version: 1.0
#Created Date: Sat Nov 28 16:14:59 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
##NOTES: exceptions to trap are SIGKILL(9) and SIGSTOP(19)
echo "The PID of this script is: $$"
trap " echo the the SIGINT is detected" 2
while ((count<=10))
do
  echo "The count is: $count "
  ((++count))
  sleep 10
done
#END#
