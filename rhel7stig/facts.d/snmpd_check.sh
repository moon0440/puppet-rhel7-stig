#!/bin/bash

INSTATUS=$(rpm -qa net-snmp)
SNMPINSTALLED=0
DEFAULTCOMMUNITY=0
if [ -n "$INSTATUS" ]; then # Is net-snmp installed?
   SNMPINSTALLED=1
   DEFCOMPRI=$(egrep "^[^#]+private.*$" /etc/snmp/snmpd.conf)
   DEFCOMPUB=$(egrep "^[^#]+public.*$" /etc/snmp/snmpd.conf) 
   if [[ -n "$DEFCOMPUB" || -n "$DEFCOMPRI" ]]; then
      DEFAULTCOMMUNITY=1
   fi
fi
echo "snmp_installed=$SNMPINSTALLED"
echo "snmp_default_com=$DEFAULTCOMMUNITY"

