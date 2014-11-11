#!/bin/bash
# conf of bind are in /etc/bind
#	4.5/24

echo 'c_b=/etc/bind/'
echo 'edit	$c_b/named.conf'
echo 'check that it is the original'
read

echo 'edit $c_b/named.conf.options'
echo '	add those:'
echo '	just below listen-on-v6 { any; }, add this:'
echo '		listen-on{any;}'
read

echo 'let_s add nonicken.com'
read
echo 'edit $c_b/named.conf.local'
echo 'add:
	zone "nonicken.com"{
		type master;
		file "/etc/bind/db.nonicken.com";
	}'
read
echo 'create $c_b/db.nonicken.com'
read
echo 'edit $c_b/db.nonicken.com'
echo -e '
		@ttl	604800	# ttl is for time 2 live
		@		IN		SOA 	NSI.nonicken.com.		admin.nonicken.com.(
								
								201419101829
								10800
								3600
								604800
								604800
								)
		@				IN		NS		NS1.nonicken.com.
		nonicken.com.		IN		A		192.168.1.2
		NS1				IN		A		xxxxxxxxxxx

		www				IN		CNAME	nonicken.COM
		mail			IN		CNAME	nonicken.COM
		
		nonicken.com		IN 		MX		10					smtp.nonicken.com.
		'
read

echo 'vi /etc/resolv.conf'
echo 'add:'
echo '	nameserver 127.0.0.1'
read


