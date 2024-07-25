#!/bin/bash

os_info() {
        operating_system="$(cat /etc/os-release | awk "NR == 7" | cut -d '=' -f 2)"
        echo "The operating system is "$operating_system""
}

load_avg() {
        load_avg="$(cat /proc/loadavg | awk '{print $1}')"
        echo "The load average is "$load_avg""
}

cpu_usage() {
        cpu_utilization="$(top -bn1 | awk "NR ==3" | cut -d ',' -f 1)"
        echo "The cpu utilization is "$cpu_utilization""
}

filesystem_usage() {
        echo "###########Displaying the filesystem usage#############"
        df -mh
        echo "#######################################################"
}

ram_usage() {
        echo "###########Displaying RAM usage#############"
        free -mh
        echo "############################################"
}

machine_uptime() {
        server_uptime="$(uptime | awk '{print $3}' | cut -d ',' -f 1)"
        echo "The server uptime is "$server_uptime" hours."
}

os_info
sleep 3
load_avg
sleep 3
cpu_usage
sleep 3
filesystem_usage
sleep 3
ram_usage
sleep 3
machine_uptime
