############################################################
# Class: rhel7stig::implementation::rhel-07-000091
#
# Description:
#	This class ignores IPv4 ICMP redirect messages
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

class rhel7stig::implementation::rhel-07-000091 {
	augeas {
		"Set net.ipv4.conf.default.accept_redirects=0":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.conf.default.accept_redirects 0";
	}	
}
