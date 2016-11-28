############################################################
# Class: rhel7stig::implementation::rhel-07-000262
#
# Description:
#       This class will ensure that the atd service is 
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

class rhel7stig::implementation::rhel-07-000262 {
	service {
		"atd":
			ensure	=> false,
			enable	=> false,
			hasstatus => true;
	}
}
