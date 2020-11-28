#!/usr/bin/env bash
#Purpose: CASE Statement with patterns
#Version: 1.0
#Created Date: Fri Nov 27 14:40:00 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
LANG=C
read -p "Please Enter Pattern:" val
echo $LANG
case $val in
[a-z] )
  echo "The value is in between a..z";;
[A-Z] )
  echo "The Value is in between A..Z";;
[0-9] )
  echo "The Value is in between 0..9";;
? )
  echo "The value is $val and one char length";;
* )
  echo "The value length is more than One Char";;
esac

#END#
