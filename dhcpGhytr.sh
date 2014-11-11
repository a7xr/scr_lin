etc/bind/named.conf
#include "/etc/bind/named.conf.options";
#include "/etc/bind/named.conf.local";
#include "/etc/bind/named.conf.default-zones";
acl trusted {127.0.0.1; };

etc/bind/named.conf.options
#	dnssec-validation auto;
#
#	auth-nxdomain no;    # conform to RFC1035
#	listen-on-v6 { any; };
#};
allow-recursion    {trusted; };

etc/resolv.conf
#nameserver 192.168.1.1
nameserver 127.0.0.1

service bind9 restart
/etc/init.d/networking restart

dans /etc/dhcp/dhcp.conf
prepend domain-name-servers 127.0.0.1;
