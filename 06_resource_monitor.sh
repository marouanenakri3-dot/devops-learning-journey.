#!/bin/bash

echo "=========================================="
echo " 🔍 Advanced System Monitor & Auditor"
echo "=========================================="

DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo -e "\n💾 Disk Usage Check:"
if [ "$DISK_USAGE" -gt 80 ]; then
    echo "⚠️ WARNING: Disk usage is high ($DISK_USAGE%)!"
else
    echo "✅ Disk space is healthy ($DISK_USAGE% used)."
fi

echo -e "\n⚙️ Checking Essential Services Status:"
SERVICES=("ssh" "cron")

for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$SERVICE"; then
        echo "✅ $SERVICE is running."
    else
        echo "❌ $SERVICE is stopped."
    fi
done

echo "========================================="
