#!/bin/bash

#Author: C H U N C H U N M A R U

#IPSWEEP

#This script is only supposed to be for this device.
#The IP variable here takes the first 3 units of IP and deletes the last(excluding the dot).

ifconfig wlan0 | grep "broadcast" | cut -d " " -f 10 

IP=`ifconfig wlan0 | grep "broadcast" | cut -d " " -f 10 | rev | cut -c4- | rev`

#The loop combines the value of IP and i together forming every IP possible in range.

for ip in {1..254}
do
	ping -c 1 $IP$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d : &
done

