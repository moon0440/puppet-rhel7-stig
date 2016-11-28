############################################################
# Class: rhel7stig::implementation::rhel-07-000145
#
# Description:
#       This class will ensure that the audit package is
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

class rhel7stig::implementation::rhel-07-000145 {
	package {
		"Installing Package 'audit'":
			ensure	=>	latest,
			name	=>	"audit",
			require	=>	Class["rhel7stig::implementation::yum"],
	}
}
