#!/bin/bash

#	FUZZing tool
ffuf -u http://soccer.htb/FUZZ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -mc 200 -c -v -o soccer_ffuf.txt
