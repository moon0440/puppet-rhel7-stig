############################################################
# Class: rhel7stig::implementation::rhel-07-040830
#
# Description:
#	This class prevent IPv4 source routed packets on all
#	interfaces
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

class rhel7stig::implementation::rhel-07-040830 {
	package { 'openswan':
			ensure => absent,
	}	
}
