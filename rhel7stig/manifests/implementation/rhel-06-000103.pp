############################################################
# Class: rhel7stig::implementation::rhel-07-000103
#
# Description:
#       This class will ensure that the ip6tables service
#	is enabled or disabled as required
#
# Variables:
#       $rhel7stig::ipv6
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

class rhel7stig::implementation::rhel-07-000103 {
	if $rhel7stig::ipv6 {
		service {
			"ip6tables":
				ensure	=> true,
				enable	=> true,
				hasstatus =>	true;
		}
	}
	else {
		service {
			"ip6tables":
				ensure  => false,
                                enable  => false,
                                hasstatus =>    true;
		}
	}
}
