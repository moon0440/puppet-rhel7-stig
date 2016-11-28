############################################################
# Class: rhel7stig::implementation::rhel-07-040470
#
# Description:
#     Verify network interfaces are not in promiscuous mode unless approved by the Information System Security Manager (ISSM) and documented. 
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

class rhel7stig::implementation::rhel-07-040470 {
      exec { 'Turn off promisc on all ints':
         command => 'for E in $(ip link show | egrep "^[0-9]+:" | sed 's/^[0-9]\+\: \([^\:]\+\):.*$/\1/'); do sudo ip link set dev $E promisc off; done',
      } 

}
