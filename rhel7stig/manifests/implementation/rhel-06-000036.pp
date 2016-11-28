############################################################
# Class: rhel7stig::implementation::rhel-07-000036
#
# Description:
#       This class will ensure that /etc/gshadow is owned by
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

class rhel7stig::implementation::rhel-07-000036 {
	file {
		"Setting Owner of /etc/gshadow => root":
                        owner	=> "root",
			group	=> "root",
			mode	=> "000",
			path	=> "/etc/gshadow",
	}
}
