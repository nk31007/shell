#!/usr/bin/env bash
#Purpose: Case statement Introdcution in shell Script
#Version: 1.0
#Created Date: Fri Nov 27 14:14:24 UTC 2020#Modified Date:
#Website: http://nag.co.in
#Author: Nageswara Rao
#START#
read -p "Please Enter Vehicle Type:" vehicle
case $vehicle in 
 *car* )
     echo "The rent of the $vehicle is : \$150";;
 *bus* )
     echo "The Rent of the $vehicle is : \$5000";;
 *lorry )
     echo "The Rent of the $vehicle is : \$50000";;
    * )
     echo "Unsupported vehicle"
esac
#END#
