#!/bin/bash
# (c) Reiser, 2017-2018
# Plesk allow ports

# TCP allowed ports
tcpports=( 20 21 22 25 53 80 106 110 113 143 443 465 587 953 990 993 995 3306 5432 8443 8447 8880 4190 6308 )

# UDP allowed ports
udpports=( 53 )

for i in "${tcpports[@]}"
do
	firewall-cmd --permanent --add-port=$i/tcp
done

for i in "${udpports[@]}"
do
	firewall-cmd --permanent --add-port=$i/udp
done

firewall-cmd --reload
echo "\nFollowing ports are open on your firewall:"
firewall-cmd --list-ports
echo "\nDone!"
