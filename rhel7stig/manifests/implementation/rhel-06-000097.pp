############################################################
# Class: rhel7stig::implementation::rhel-07-000097
#
# Description:
#	This class will configure the system to utilize IPv4
#	reverse path filter by default
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

class rhel7stig::implementation::rhel-07-000097 {
	augeas {
		"Set net.ipv4.conf.default.rp_filter=1":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.conf.default.rp_filter 1";
	}	
}
