############################################################
# Class: rhel7stig::implementation::rhel-07-000089
#
# Description:
#	This class denies IPv4 source-routed packets by 
#	default
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

class rhel7stig::implementation::rhel-07-000089 {
	augeas {
		"Set net.ipv4.conf.default.accept_source_route=0":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.conf.default.accept_source_route 0";
	}	
}
