############################################################
# Class: rhel7stig::implementation::rhel-07-000116
#
# Description:
#       This class will ensure that the iptables service is 
#	enabled/started
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

class rhel7stig::implementation::rhel-07-000116 {
	service {
		"iptables":
			ensure	=> true,
			enable	=> true,
			hasstatus =>	true;
	}
}
