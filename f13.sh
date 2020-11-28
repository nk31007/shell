#!/usr/bin/env bash
#Purpose: Demonstrate Local keyword usage
#Version: 1.0
#Created Date: Sat Nov 28 16:31:20 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
read -p "Please Enter The name of variable a:" a
function nag {
local name=$1
printf "%s\n" "$name"
}

name="Nageswara"
echo "The Name of The Person is: $name"
echo -ne "The Name of The Person is: "
nag $a
echo "The name of the person is: $name"
#END#
