#!/bin/bash

for i in $(ls /etc/ssh/ssh_host_*_key)
do
	if [ -z "${v}" ]
	then
		v="${i}"
	else
		v="${v},${i}"
	fi
done
echo "ssh_key_files=${v}"
