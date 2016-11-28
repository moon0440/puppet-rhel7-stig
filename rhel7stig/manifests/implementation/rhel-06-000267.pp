############################################################
# Class: rhel7stig::implementation::rhel-07-000267
#
# Description:
#       This class will ensure that the qpidd service is 
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

class rhel7stig::implementation::rhel-07-000267 {
	service {
		"qpidd":
			ensure	=> false,
			enable	=> false,
			hasstatus => true;
	}
}
