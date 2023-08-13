#!/bin/bash

# 1) Initialize variables
DISKUSE=$(df -h | grep drivers | awk '{print $5}' | cut -d '%' -f1) 
LIMITDISK=90
DISKDIFFERENCE=$((100 - DISKUSE))

# 2) set function for comparing current disk usage to limit disk usage
if [ $DISKUSE -gt $LIMITDISK ];
# 3) Function to alert user about disk usage
then 
    echo "You have $DISKDIFFERENCE% of disk space left. Disk space is running out"
else
    echo "You have $DISKDIFFERENCE% of disk space left."
fi
