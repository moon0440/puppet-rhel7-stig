############################################################
# Class: rhel7stig::implementation::rhel-07-000099
#
# Description:
#	This class will configure the system to ignore IPv6
#	redirects by default
#
# Variables:
#	None
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

class rhel7stig::implementation::rhel-07-000099 {
	augeas {
		"Set net.ipv6.conf.default.accept_recirects=0":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv6.conf.default.accept_recirects 0";
	}	
}
