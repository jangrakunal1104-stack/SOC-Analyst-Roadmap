#!/bin/bash
echo "🚀 NOVA Training Monitor - Press Ctrl+C to stop"
echo "=================================================="

while true; do
clear
echo "🕒 $(date '+%Y-%m-%d %H:%M:%S')"
echo "=================================================="

echo "🔥 GPU STATUS"
echo "--------------------------------"
nvidia-smi --query-gpu=temperature.gpu,utilization.gpu,power.draw,memory.used,memory.total,clocks.current.graphics --format=csv,noheader



echo ""
echo "🧠 MEMORY USAGE"
echo "--------------------------------"
free -h | grep -E "Mem|Swap"

echo ""
echo "=================================================="
echo "Running... (Refresh every 3 seconds)"
sleep 3
done
