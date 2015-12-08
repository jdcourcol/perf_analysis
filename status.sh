#!/usr/bin/env bash
# from http://www.brendangregg.com/blog/2015-12-03/linux-perf-60s-video.html
echo "uptime - load average"
uptime
read
echo "dmesg - last 10 messages"
dmesg | tail
read
echo "vmstat - virtual memory stat"
vmstat 1 5
read
echo "mpstat - CPU breakdown"
mpstat -P ALL 1 5
read
echo "pidstat"
pidstat 1 5
read
echo "iostat"
iostat -xz 1 5
read
echo "free -m"
free -mh
read
echo "sar network interface"
sar -n DEV 1 5
read
echo "sar TCP"
sar -n TCP,ETCP 1 5
read
echo "top"
top
