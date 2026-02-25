#!/usr/bin/env bash

service_name=$1

if systemctl is-active --quiet "$service_name"; then
	echo "Service "$service_name" is running"
else
	echo "Service "$service_name" is not running"
fi

