#!/bin/bash

# Suspicious Login Tracker
echo "Scanning for repeated failed SSH login attempts..."

# Extract IPs from "Failed password" logs and count occurrences
sudo grep "Failed password" /var/log/secure | grep -oP 'from \K\S+' | sort | uniq -c | sort -nr > log_report.txt

# Display full output
cat log_report.txt

echo ""
echo "Checking for brute force attempts..."
awk '$1 > 5 { print "ALERT: Possible brute force attack from IP " $2 " with " $1 " failed attempts." }' log_report.txt
