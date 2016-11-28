############################################################
# Class: rhel7stig::implementation::rhel-07-000331
#
# Description:
#       This class will ensure that the bluetooth service
#	is disabled/stopped
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

class rhel7stig::implementation::rhel-07-000331 {
	service {
		"bluetooth":
			ensure	=> false,
			enable	=> false,
			hasstatus => true;
	}
}
