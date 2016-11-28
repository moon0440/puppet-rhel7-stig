############################################################
# Class: rhel7stig::implementation::rhel-07-000203
#
# Description:
#       This class will ensure that the xinetd service is 
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

class rhel7stig::implementation::rhel-07-000203 {
	service {
		"xinetd":
			ensure	=> false,
			enable	=> false,
	}
}
