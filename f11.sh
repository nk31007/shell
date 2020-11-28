#!/usr/bin/bash
RED='\033[0;31m'
NC='\033[0m'

help() {
	echo "dmcli [OUTPUTFILE:path] [URI:url]"
}

welcome() {
	echo -e "author: ${RED}@atahabaki"
	echo -e "     __      _______   ____"
	echo -e " ___/ /_ _  / ___/ /  /  _/"
	echo -e "/ _  /  ' \/ /__/ /___/ /  "
	echo -e "\_,_/_/_/_/\___/____/___/  "
	echo -e "\nDownloading${NC} has never been ${RED}easier!${NC}\n"
}

welcome
if [ $# -eq 2 ]
then
	filename=$1
	url=$2
	headers=`curl -I ${url} > headers`
	# get content-length
	# get accept-ranges
	# according to accept-ranges divide into * parts or do not
	# create tmp files
	# combine tmp files
	# delete unnecessary files
else
	help
fi

