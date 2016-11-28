############################################################
# Class: rhel7stig::implementation::rhel-07-000211
#
# Description:
#       This class will ensure that the telnet service is 
#	stopped/disabled
#
# Variables:
#       None
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

class rhel7stig::implementation::rhel-07-000211 {
	service {
		"telnet":
			ensure	=> false,
			enable	=> false,
	}
}
