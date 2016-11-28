############################################################
# Class: rhel7stig::implementation::rhel-07-000216
#
# Description:
#       This class will ensure that the rexec service is 
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

class rhel7stig::implementation::rhel-07-000216 {
	service {
		"rexec":
			ensure	=> false,
			enable	=> false,
			hasstatus => true;
	}
}
