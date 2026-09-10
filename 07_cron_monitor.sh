#!/bin/bash

LOG_FILE="system.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
MEMORY_USAGE=$(free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)", $3,$2,$3*100/$2 }')

echo "[$TIMESTAMP] - $MEMORY_USAGE" >> "$LOG_FILE"
