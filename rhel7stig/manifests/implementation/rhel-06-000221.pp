############################################################
# Class: rhel7stig::implementation::rhel-07-000221
#
# Description:
#       This class will ensure that the ypbind service is 
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

class rhel7stig::implementation::rhel-07-000221 {
	service {
		"ypbind":
			ensure	=> false,
			enable	=> false,
	}
}
