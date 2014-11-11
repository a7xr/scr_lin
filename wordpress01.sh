#!/bin/bash

#	cp the wpExtracted into ur /var/www/						%001
#	create db for wordpress										%002
#	edit the conf of wordpress									%003
#	run the installScript										%004
#	config wpSetting											%005
#	preview ur wordpress										%006
#


#	%001
echo 'cp ur wpExtracted into /var/www/'
read

#	%002
echo 'create dbmysql(wordpress)'
read
echo 'mysql -u "adminusername" -p'
warn_notrun

echo 'when u will be inside mysql'
echo 'do those cmd'
echo '		CREATE DATABASE wordpress;'
echo '		GRANT ALL PRIVILEGES ON *.* TO "wordpress"@"localhost"'
echo '		FLUSH PRIVILEGES;'
echo '		EXIT;'
read
mysql -u root -p

#	%003
echo 'will edit the conf of wp'
read


#	%004
