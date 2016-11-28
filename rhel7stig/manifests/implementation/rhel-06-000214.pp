############################################################
# Class: rhel7stig::implementation::rhel-07-000214
#
# Description:
#       This class will ensure that the rshd service is 
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

class rhel7stig::implementation::rhel-07-000214 {
	service {
		"rshd":
			ensure	=> false,
			enable	=> false,
	}
}
