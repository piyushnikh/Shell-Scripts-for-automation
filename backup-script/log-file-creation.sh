#!/bin/bash

#The below command creates simple logs for demonstration purposes. We can run this script as a cron job.

free -mh >> /root/logs/system_logs_"$(date +%d%m%Y%H%M%S)".log
