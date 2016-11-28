############################################################
# Class: rhel7stig::implementation::rhel-07-000265
#
# Description:
#       This class will ensure that the ntpdate service is 
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

class rhel7stig::implementation::rhel-07-000265 {
	service {
		"ntpdate":
			ensure	=> false,
			enable	=> false,
			hasstatus => true;
	}
}
