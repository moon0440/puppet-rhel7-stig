############################################################
# Class: rhel7stig::implementation::rhel-07-000009
#
# Description:
#       This class will ensure that the rhnsd service is 
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

class rhel7stig::implementation::rhel-07-000009 {
	service {
		"rhnsd":
			ensure	=> false,
			enable	=> false,
			hasstatus => true;
	}
}
