#!/bin/bash
#add fix to exercise1 here
apt update 
apt install resolveconf
mkdir -p /etc/resolvconf/resolv.conf.d/
touch /etc/resolvconf/resolv.conf.d/head
cat > /etc/resolvconf/resolv.conf.d/head << EOF
nameserver 8.8.8.8
nameserver 8.8.4.4
EOF
systemctl restart resolvconf

