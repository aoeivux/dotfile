#!/bin/bash

# 获取当前时间
TIME=$(date +"%H:%M")

# 获取系统负载
LOAD=$(uptime | awk '{print $10}')

# 获取网络状态
WIFI=$(ifconfig en0 | awk '/status:/{print $2}' | tr '[:lower:]' '[:upper:]')
IP=$(ifconfig en0 | grep 'inet ' | awk '{print $2}')

# 获取音量
VOLUME=$(osascript -e 'output volume of (get volume settings)')

# 获取亮度
BRIGHTNESS=$(brightness -l | awk 'NR==1{print $NF}')

# 获取系统信息
CPU_TEMP=$(sysctl -a | grep "cpu.*temperature" | awk '{print $2 / 100}')
MEMORY=$(vm_stat | awk '/Pages free/ {print $3 * 4096 / 1048576 " MB free"}')

# 显示状态栏
echo "  $TIME    $LOAD    $WIFI $IP    $VOLUME    $BRIGHTNESS    $WEATHER $TEMP°C $HUMIDITY%    $CPU_TEMP°C    $MEMORY "

