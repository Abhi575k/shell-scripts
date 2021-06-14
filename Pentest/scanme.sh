#!/bin/bash

#Author: C H U N C H U N M A R U

echo "ENTER IP to be scanned:"
read i

echo "Info Gather Result for $i:"
nmap -sS -sC --osscan-guess  -sV -p- $i
