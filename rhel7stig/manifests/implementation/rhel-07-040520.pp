############################################################
# Class: rhel7stig::implementation::rhel-07-040520
#
# Description:
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

class rhel7stig::implementation::rhel-07-040520 {
	package { 'tftp':
			ensure => absent,
	}	
}
