#!/bin/bash

# on client:
# 	create the keygen												%001
# 	cp the keygen.pub created in a usb								%002
# on server
# 	cp the keygen.pub in usb to ~/.ssh								%003
# on client
# 	do this cmd														%004

#	%001
echo 'create a sshKeygen'
echo '$ ssh-keygen -t rsa'
read

#	%002
echo
echo 'cp the keygen.pub into a flashUsb'
read

#	%003
echo 
echo 'cp the keygen.pub in the flash to ur server, '
echo '	on this place: $HOME/.ssh/'
read

#	%004
echo
echo 'do this next cmd'
echo 'ssh-copy-id -i keygen.pub userOnServer@ipServer'
