nmap -p- 10.10.11.180 -o nmap_big
nmap -O -sV -A 10.10.11.180 -o nmap_small
gobuster dns -d shoppy.htb -w /opt/useful/SecLists/Discovery/DNS/subdomains-top1million-110000.txt -t 100 -o gobuster_dns
gobuster dir -u http://shoppy.htb/ -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 100 -o gobuster_dir
