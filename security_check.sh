#!/bin/bash
echo "=== SOC Security Check ==="
echo "Time: $(date)"
echo "User: $(whoami)"
echo "============================="

echo -e "\n1. Listening Ports:"
ss -tuln | head -n 10

echo -e "\n2. Top Processes:"
ps aux --sort=-%cpu | head -n 8

echo -e "\nSecurity check done!"
