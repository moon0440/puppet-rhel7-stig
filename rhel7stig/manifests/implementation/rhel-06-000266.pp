############################################################
# Class: rhel7stig::implementation::rhel-07-000266
#
# Description:
#       This class will ensure that the oddjobd service is 
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

class rhel7stig::implementation::rhel-07-000266 {
	service {
		"oddjobd":
			ensure	=> false,
			enable	=> false,
			hasstatus => true;
	}
}
