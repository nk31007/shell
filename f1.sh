#!/bin/sh
set -xe
HOSTNAME=$(hostname)
DATE=$(date "+%y-%m-%d %H-%M-%S")
CPUUSAGE=$(top -b -n1 -d1|grep "Cpu(s)"|awk '{print $2}'|awk -F. '{print $1}')
MEMUSAGE=$(free -m| grep Mem| awk '{print $3/$2 * 100.0 }')
DISKUSAGE=$( df -P | column -t |awk '{print $5}'|sed 's/%$//g')
echo 'HOSTNAME Date&Time CPUi(%) Men(%), Disk(%)' >> /opt/usagereport
echo "$HOSTNAME $DATE $CPUUSAGE $MEMUSAGE $DISKUSAGE" >>/opt/usagereport

for i in `cat /hostlist`
do
RHOSTNAME=$(ssh $i hostname) 
RDATE=$(ssh $i 'date "+%y-%m-%d %H-%M-%S"') 
RCPUUSAGE=$(ssh $i top -b -n1 -d1|grep "Cpu(s)"|awk '{print $2}'|awk -F. '{print $1}')
RMEMUSAGE=$(ssh $i free -m| grep Mem| awk '{print $3/$2 * 100.0 }') 
RDISKUSAGE=$(ssh $i df -P | column -t |awk '{print $5}'|sed 's/%$//g')

echo "RHOSTNAME RDATE RCPUUSAGE RMEMUSAGE RDISKUSAGE" >>/opt/usagereport
done
