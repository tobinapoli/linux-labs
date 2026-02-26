#!/usr/bin/env bash

threshold=$1

used=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

if [ "$used" -ge "$threshold" ]; then
    echo "Disk usage is ${used}% — limit exceeded"
else
    echo "Disk usage is ${used}% — OK"
fi
