#!/usr/bin/env bash

port=$1

if ss -tuln | grep -q ":$port "; then
    echo "Port $port is open"
else
    echo "Port $port is closed"
fi
