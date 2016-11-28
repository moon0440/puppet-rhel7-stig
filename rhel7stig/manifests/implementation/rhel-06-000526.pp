############################################################
# Class: rhel7stig::implementation::rhel-07-000526
#
# Description:
#       This class will ensure that the autofs service is 
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

class rhel7stig::implementation::rhel-07-000526 {
	service {
		"autofs":
			ensure	=> false,
			enable	=> false,
			hasstatus => true;
	}
}
