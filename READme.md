# Suspicious Login Tracker (Linux CLI Brute Force Detection)

This project is a lightweight Bash script that detects suspicious login activity from system authentication logs. It scans for repeated failed SSH login attempts and triggers alerts when a brute force pattern is identified.

## Features

- Parses `/var/log/secure` for failed SSH login attempts
- Extracts IP addresses using `grep` and regex
- Counts occurrences of each IP
- Triggers alerts for IPs with more than 5 failed attempts
- CLI-based, no third-party software required

## Files

- `tracker.sh` – Main script
- `log_report.txt` – Output report generated on each run (optional)

## Sample Output

```
Scanning for repeated failed SSH login attempts...
55 ::1

Checking for brute force attempts...
ALERT: Possible brute force attack from IP ::1 with 55 failed attempts.
```
