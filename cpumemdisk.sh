#!/bin/bash
## To Collect CPU, Memory and Disk usage Report from mmultiple servers.
# Author: Nageswara Rao Kallutla
# Website: server-compute.com
## format : Hostname, Date&Time, %CPU, Mem%, Disk%
set -xe

HOSTNAME=$(hostname)
DATE=$(date "+%Y-%m-%d %H:%M:%S")
CPUUSAGE=$(top -b -n1 -d1|grep "Cpu(s)"|awk '{print $2}'|awk -F. '{print $1}')
MEMUSAGE=$(free -m| grep Mem| awk '{print ($3/$2)*100}')
DISKUSAGE=$(df -Ph| column -t| awk '{print $5}' |tail -n 1|sed 's/%//g')

echo -e  "Hostname,\t\t Date&Time, \t\t%CPU, \t\tMem%, \t\tDisk%" >>/opt/usagereport
echo -e  "$HOSTNAME, \t$DATE, \t$CPUUSAGE, \t\t$MEMUSAGE, \t$DISKUSAGE" >>/opt/usagereport
for i in `cat /scripts/hostlist`
do
RHOSTNAME=$(ssh $i hostname)
RDATE=$(date "+%Y-%m-%d %H:%M:%S")
RCPUUSAGE=$(top -b -n1 -d1|grep "Cpu(s)"|awk '{print $2}'|awk -F. '{print $1}')
RMEMUSAGE=$(free -m| grep Mem| awk '{print ($3/$2)*100}')
RDISKUSAGE=$(df -Ph| column -t| awk '{print $5}' |tail -n 1|sed 's/%//g')

echo -e  "$RHOSTNAME, \t$RDATE, \t$RCPUUSAGE, \t\t$RMEMUSAGE, \t$RDISKUSAGE" >>/opt/usagereport
done

