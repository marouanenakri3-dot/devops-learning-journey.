#!/bin/bash

SERVER_NAME=$(hostname)
USER_NAME=$(whoami)

echo "=========================================="
echo " 🖥️ System Health Report for: $SERVER_NAME"
echo " 👤 Executed by: $USER_NAME"
echo "=========================================="

echo -e "\n📊 1. Memory Usage (RAM):"
free -h

echo -e "\n🌐 2. Network Connectivity Check:"
ping -c 2 google.com > /dev/null && echo "✅ Internet Connection: OK" || echo "❌ Internet Connection: FAILED"

echo "=========================================="
