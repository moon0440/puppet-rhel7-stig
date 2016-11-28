############################################################
# Class: rhel7stig::implementation::rhel-07-000039
#
# Description:
#       This class will ensure that /etc/passwd is owned by
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

class rhel7stig::implementation::rhel-07-000039 {
	file {
		"Setting Owner of /etc/passwd => root":
                        owner	=> "root",
			group	=> "root",
			mode	=> "644",
			path	=> "/etc/passwd",
	}
}
