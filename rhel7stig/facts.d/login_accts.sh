#!/bin/bash

for i in $(cat /etc/passwd | cut -d':' -f1,3,7 | grep -vE ":[0-9]{1,2}:" | grep -vE ":[1-4][0-9][0-9]:" | grep -v nologin | cut -d':' -f1)
do
   if [ -z "${LIST}" ]
   then
      LIST="${i}"
   else
      LIST="${LIST},${i}"
   fi
done
echo "login_accounts=${LIST}"
