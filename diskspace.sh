#!/bin/sh
#set -ex
THRESHOLD=35
mailto="root"
HOSTNAME=$(hostname)
for path in `df -h |grep -vE 'Filesystem|tmpfs'|less | awk '{print $5}'| sed 's/%$//g'`
do
  if [ $path -ge $THRESHOLD ] ; then
    df -h |grep $path% >>/tmp/temp
  fi
done
 

VALUE=`cat /tmp/temp|wc -l`
if [ $VALUE -ge 1 ]; then
   mail -s "$HOSTNAME Disk SPace is critical" $mailto </tmp/temp
fi

#rm -rf /tmp/temp

