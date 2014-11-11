#!/bin/bash
if [[ -n $1 ]]
then
	nmap "$1"
else
	echo 'to scan a network'
	echo 'u can scan a single ip'
	echo '	ex	:	this. 192.168.1.2'
	echo
	echo 'u can scan a whole network'
	echo '	ex	:	this. 192.168.1.*'
	echo
	echo 'u can scan a range of ip'
	echo '	ex	:	this. 192.168.1.1-20'
	echo '	ex	:	this. 192.168.1.1,2,3'
fi
