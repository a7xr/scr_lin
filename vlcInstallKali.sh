#!/bin/bash
#	install vlc
#	install ghex
#	open ghex
#	go to /usr/bin/vlc
#		change getuid by getppid
echo 'install vlc'
read
apt-get install vlc

echo 'install ghex'
read
apt-get install ghex

echo 'open ghex'
read
echo 'go to /usr/bin/vlc'
read
echo 'search for getuuid'
read
echo "replace getuuid by getppid"
read
