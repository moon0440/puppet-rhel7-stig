############################################################
# Class: rhel7stig::implementation::rhel-07-010072
#
# Description:
#       This class will ensure that the screen package is
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

class rhel7stig::implementation::rhel-07-010072 {
	package {
		"Install screen Package":
			ensure	=>	latest,
			name	=>	"screen",
			require	=>	Class["rhel7stig::implementation::yum"],
	}
}
