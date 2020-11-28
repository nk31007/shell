#!/usr/bin/env bash
#Purpose: Example for until loop
#Version: 1.0
#Created Date: Fri Nov 27 19:02:35 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
read -p "Please Enter value for a: " a
read -p "Please Enter value for b: " b
echo "The Even Numbers Between $a and $b are:"
until [ $a -eq $b ]
do
  if ((a%2 == 0))
  then
    echo $a
  fi
((++a))
done

#END#
