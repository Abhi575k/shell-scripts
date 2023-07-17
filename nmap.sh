#!/bin/bash

nmap 10.10.11.194 -oN soccer_shortscan.txt
nmap -sS -sV -Pn -O -A 10.10.11.194 -p- -oN soccer_bigscan.txt
