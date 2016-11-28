############################################################
# Class: rhel7stig::implementation::rhel-07-000291
#
# Description:
#       This class will ensure that xorg-x11-server-common
#	is not installed
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
###########################################################

class rhel7stig::implementation::rhel-07-000291 {
	if !$rhel7stig::needsx {
		package {
			"xorg-x11-server-common":
				ensure  => absent,
				require => Class["rhel7stig::implementation::yum"],
		}
	}
}
