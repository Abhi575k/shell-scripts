#!/bin/bash

bash ./ipsweep.sh > ip.txt

echo "$IP"

while read i
do
	echo "$i"
	arp-scan $i | grep "$i" | grep -v "Interface:"
	nmap $i
	echo "---------------------------------------------------"
done < ip.txt

