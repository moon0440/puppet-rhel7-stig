############################################################
# Class: rhel7stig::implementation::rhel-07-040490
#
# Description:
#  Document the "lftpd" package with the ISSO as an operational requirement or remove it from the system with the following command
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

class rhel7stig::implementation::rhel-07-040490 {
	package { 'lftp':
			ensure => absent,
	}	
}
