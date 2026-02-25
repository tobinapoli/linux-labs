This script checks whether a service is active or not.
It receives one parameter: the service name.
The script uses the systemctl is-active command to determine whether the service is running.
Finally, it prints either "$service is running" or "$service is not running".
