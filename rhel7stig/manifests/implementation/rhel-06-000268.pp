############################################################
# Class: rhel7stig::implementation::rhel-07-000268
#
# Description:
#       This class will ensure that the rdisc service is 
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

class rhel7stig::implementation::rhel-07-000268 {
	service {
		"rdisc":
			ensure	=> false,
			enable	=> false,
			hasstatus => true;
	}
}
