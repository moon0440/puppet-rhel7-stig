#!/bin/bash

SLIST="/etc/sudoers"
for i in $(ls /etc/sudoers.d/)
do
   SLIST="${SLIST},/etc/sudoers.d/${i}"
done
echo "sudoers_files=${SLIST}"
