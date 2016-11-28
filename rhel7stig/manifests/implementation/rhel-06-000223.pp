############################################################
# Class: rhel7stig::implementation::rhel-07-000223
#
# Description:
#       This class will ensure that the tftp service is 
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

class rhel7stig::implementation::rhel-07-000223 {
	service {
		"tftp":
			ensure	=> false,
			enable	=> false,
	}
}
