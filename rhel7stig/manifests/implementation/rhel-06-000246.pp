############################################################
# Class: rhel7stig::implementation::rhel-07-000246
#
# Description:
#       This class will ensure that the avahi-daemon
#	service is disabled/stopped
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

class rhel7stig::implementation::rhel-07-000246 {
	service {
		"avahi-daemon":
			ensure	=> false,
			enable	=> false,
			hasstatus => true,
	}
}
