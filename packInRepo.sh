#!/bin/bash
echo  http://http.kali.org/kali/dists/debian-testing/main/binary-i386/Packages
echo  http://ftp.cc.uoc.gr/mirrors/linux/kali/kali/dists/kali-rolling/main/binary-i386/Packages
read
curl -s http://http.kali.org/kali/dists/debian-testing/main/binary-i386/Packages | grep Package

echo http://security.kali.org/kali-security/dists/kali/main/binary-i386/Packages
read
curl -s http://security.kali.org/kali-security/dists/kali/main/binary-i386/Packages | grep Package  

echo http://http.kali.org/kali/dists/kali-rolling/main/binary-i386/Packages
read 
curl -s http://http.kali.org/kali/dists/kali-rolling/main/binary-i386/Packages | grep Package  

echo http://security.kali.org/kali-security/dists/kali/main/binary-i386/
read
curl -s http://security.kali.org/kali-security/dists/kali/main/binary-i386/Packages | grep Package  
