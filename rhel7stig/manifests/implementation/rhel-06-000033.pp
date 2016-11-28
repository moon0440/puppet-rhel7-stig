############################################################
# Class: rhel7stig::implementation::rhel-07-000033
#
# Description:
#       This class will ensure that /etc/shadow is owned by
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

class rhel7stig::implementation::rhel-07-000033 {
	file {
		"Setting Owner of /etc/shadow => root":
                        owner	=> "root",
			group	=> "root",
			mode	=> "000",
			path	=> "/etc/shadow",
	}
}
