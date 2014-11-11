#!/bin/bash

# some note to check before starting
#				http://www.cyberciti.biz/tips/recover-mysql-root-password.html
# check that MySQL_server stopped.							%001
# Start the MySQL (mysqld)									%002
# Connect to mysql server as the root user.					%003
# set new mysqlRootPwd										%004
# Exit and restart the MySQL server
#
#

#	%000
echo 'make sure that u have 2 panes of tmux opened'
read

#	%001
echo 'check that mysql stopped'
read

#	%002
echo 'start mysql w/o pwd'
read
mysqld_safe --skip-grant-tables &

#	%003
echo 'connect root to mysql'
read
echo 'after connection u will be able to change the root passwd'
echo '	do it like this when u will be in mysql'
read
echo 'inside mysql'
echo '	use mysql;'
echo '	update user set password=PASSWORD("NEW-ROOT-PASSWORD") where User='root';'
echo '	flush privileges;'

mysql -u root

#	%004
echo ' Setup new MySQL root user password'
read
#	%005
