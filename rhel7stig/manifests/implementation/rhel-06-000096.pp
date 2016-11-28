############################################################
# Class: rhel7stig::implementation::rhel-07-000096
#
# Description:
#	This class configures the system to utilize an IPv4
#	reverse path filter for all interfaces
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

class rhel7stig::implementation::rhel-07-000096 {
	augeas {
		"Set net.ipv4.conf.all.rp_filter=1":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.conf.all.rp_filter 1";
	}	
}
