############################################################
# Class: rhel7stig::implementation::rhel-07-000261
#
# Description:
#       This class will ensure that the abrtd service is 
#	disabled/stopped
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

class rhel7stig::implementation::rhel-07-000261 {
	service {
		"abrtd":
			ensure	=> false,
			enable	=> false,
			hasstatus => true;
	}
}
