############################################################
# Class: rhel7stig::implementation::rhel-07-000042
#
# Description:
#       This class will ensure that /etc/group is owned by
#	root
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

class rhel7stig::implementation::rhel-07-000042 {
	file {
		"Setting Owner of /etc/group => root":
                        owner	=> "root",
			group	=> "root",
			mode	=> "644",
			path	=> "/etc/group",
	}
}
