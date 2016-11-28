############################################################
# Class: rhel7stig::implementation::rhel-07-000224
#
# Description:
#       This class will ensure that the cron service is 
#	enabled/running
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

class rhel7stig::implementation::rhel-07-000224 {
	service {
		"crond":
			ensure	=> true,
			enable	=> true,
	}
}
