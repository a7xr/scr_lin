#!/bin/bash
#
# from http://www.unixmen.com/setup-local-repository-with-debian-7/
#
# install apache 												%001
# create a folder($pack) where to set the packages				%002
#	pack='/var/www/debian7/packages'
# create a folder($arch) which design the architecture			%003
#	arch='i686'
# #copy #deb_files from somewhere								%004
# umount the devices where u copied the deb_files				%005
# check if deb_files are in $pack/$arch							%006
# create a #catalog_file										%007
# add something in /etc/apt/sources.list						%008
# doing an update												%009

# to configure clients											%010




#	%001
read -p 'install apache or go out(<ctrl-c>)' y_n
if [ "$y_n" = "y" ]
then
apt-get install apache2
read -p 'done with installing apache'
else
	echo
	echo 'did not install apache2'
	read
fi
echo


#	%002 and %003
echo 'will create folder to set ur debfiles'
read
pack=/media/hdd_sda5/deb7/packages
arch='i686'
mkdir -p $pack/$arch
echo
echo "check there is $pack/$arch"

#	%004
echo
echo 'cp deb_files from somewhere'
echo "find /media/debian-7.0.0-i386/pool/ -name "*.deb" -exec cp -ru {} $pack/$arch/ \;"
read


#	%005
echo
echo 'umount devices where u copied ur deb_files'
echo '	'
read

#	%006
echo
echo "check if deb_files are in $pack/$arch/"
read

#	%007
echo
echo 'create a catalog file'
read
cd $pack/$arch
dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz

#	%008
echo
echo 'add sth(deb file:/var/www/packages/i386/ /)'
echo  'into ur /etc/apt/sources.list'

#	%009
echo
echo 'do an update by: '
echo 'apt-get update'
read


#	%010
#	in client:
#		sudo nano /etc/apt/sources.list
#		deb http://192.168.1.200/packages/i386/ /
