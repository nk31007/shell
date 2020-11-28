#!/usr/bin/env bash
#Purpose: While Loop Example
#Version: 1.0
#Created Date: Fri Nov 27 18:55:15 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
read -p "Please Enter The value from:" a
read -p "Please Enter The Value From:" b
echo "Printing even numbers from $a .. $b:"
while [ $a -le $b ]
do
  if  (($a % 2 == 0))
  then
    echo $a
  fi
 ((++a))
done

#END#
