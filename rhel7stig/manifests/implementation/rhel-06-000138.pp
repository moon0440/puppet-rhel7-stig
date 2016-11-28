############################################################
# Class: rhel7stig::implementation::rhel-07-000138
#
# Description:
#       This class will ensure that the logrotate package is
#	installed
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
#       Class rhel7stig::implementation::yum
############################################################

class rhel7stig::implementation::rhel-07-000138 {
	package {
		"Install Logrotate Package":
			ensure	=>	latest,
			name	=>	"logrotate",
			require	=>	Class["rhel7stig::implementation::yum"],
	}
}
