#!/bin/bash

while true
do
	echo "Dynatrace Demo - Simulation"
	sleep 10
	echo "Stopping Apache to trigger Dynatrace"
	systemctl stop httpd
	echo "Check httpd status"
	systemctl status httpd
	sleep 240
	echo "Check http status"
	systemctl status httpd
done
