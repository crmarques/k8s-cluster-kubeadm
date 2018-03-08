#! /bin/bash

cat <<EOF >> /etc/hosts
192.168.1.100   master
192.168.1.101   node01
192.168.1.102   node02
EOF
