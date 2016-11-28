############################################################
# Class: rhel7stig::implementation::rhel-07-040500
#
# Description:
#  Verify a TFTP server has not been installed on the system. 
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

class rhel7stig::implementation::rhel-07-040500 {
	package { 'tftp-server':
			ensure => absent,
	}	
}
