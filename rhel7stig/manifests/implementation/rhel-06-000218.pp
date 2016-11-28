############################################################
# Class: rhel7stig::implementation::rhel-07-000218
#
# Description:
#       This class will ensure that the rlogin service is 
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

class rhel7stig::implementation::rhel-07-000218 {
	service {
		"rlogin":
			ensure	=> false,
			enable	=> false,
	}
}
