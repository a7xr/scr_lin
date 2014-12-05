#!/bin/bash
echo 'apt-get install build-essential linux-headers-`uname -r`'
read

echo 'cd /lib/modules/$(uname -r)/build/include/linux'
read

echo ' sudo ln -s ../generated/utsrelease.h
sudo ln -s ../generated/autoconf.h
sudo ln -s ../generated/uapi/linux/version.h
'
read
