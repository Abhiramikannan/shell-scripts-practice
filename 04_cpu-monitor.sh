#Write a Bash script that collects and displays the following system information: current date and time, CPU usage, memory usage, disk space usage, and network statistics. The script should also send an email alert if CPU or memory usage exceeds 80%.** give how to run in git bash
#!/bin/bash

#date
date=$(date -u +%Y-%m-%dT%H:%M:%S%Z)
echo "current date is $date" 

#memory
total=$(free -k |grep -i mem| awk '{print $2}') # in shell use -k or -m
used=$(free -k |grep -i mem| awk '{print $3}')
percentage=$(echo "scale=2; $used / $total * 100" | bc)
echo "memory_usage $percentage%"

#disk
disk_usage=$(df | awk 'NR==2 {print $5}') #(row 2 column 5)
echo "disk usage is $disk_usage"

#cpu
# Get CPU idle value and calculate usage
cpu_usage=$(top -bn1 | grep -i "cpu(s)" | awk 'NR==1 {print 100 - $8}')
# Print result
echo "CPU Usage: $cpu_usage%"

#net-stats
cat /proc/net/dev


cpu_int=${cpu_usage%.*}
mem_int=${percentage%.*}
if [[ cpu_int -ge 80 ]]; then
        echo " sent a mail" | mail -s "Alert"  abhiabhirami242@gmail.com
fi
if [[ mem_int -ge 80 ]]; then
        echo "sent a mail" | mail -s abhiabhirami242@gmail.com
fi
