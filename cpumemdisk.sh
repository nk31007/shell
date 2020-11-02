#!/bin/bash
## To Collect CPU, Memory and Disk usage Report from mmultiple servers.
# Author: Nageswara Rao Kallutla
# Website: server-compute.com
## format : Hostname, Date&Time, %CPU, Mem%, Disk%

HOSTNAME=$(hostname)
DATE=$(date "+%Y-%m-%d %H:%M:%S")
CPUUSAGE=$(top -b -n1 -d1|grep "Cpu(s)"|awk '{print $2}'|awk -F. '{print $1}')
MEMUSAGE=$(free -m| grep Mem| awk '{print ($3/$2)*100}')
DISKUSAGE=$()

