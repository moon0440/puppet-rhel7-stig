############################################################
# Class: rhel7stig::implementation::rhel-07-040580
#
# Description:
#  Whether active or not, default Simple Network Management Protocol (SNMP) community strings must be changed to maintain security. If the service is running with the default authenticators, anyone can gather data about the system and the network and use the information to potentially compromise the integrity of the system or network(s). It is highly recommended that SNMP version 3 user authentication and message encryption be used in place of the version 2 community strings.
#
# Variables:
#	None
#
# Facts:
#       None
#
# Files:
#       None
#
# Templates:
#       None
#
# Dependencies:
#       None
############################################################

class rhel7stig::implementation::rhel-07-040580 {
   if $::snmp_installed and $::snmp_default_com {
      notice("SNMPD is installed and configured with default community strings. Service will now be stopped and disabled.")
      service { 'snmpd':
         ensure => stopped,
         enable => false
      }
   }
}
