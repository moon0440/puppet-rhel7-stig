############################################################
# Class: rhel7stig::implementation::rhel-07-000065
#
# Description:
#       This class will ensure that grub.conf is
#	owned by root
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

class rhel7stig::implementation::rhel-07-000065 {
	file {
		"Setting Owner of grub.conf => root":
                        owner	=> "root",
			group	=> "root",
			mode	=> "600",
			path	=> "/etc/grub.conf",
			links	=>	"follow",
	}
}
