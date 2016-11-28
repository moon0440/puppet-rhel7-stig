############################################################
# Class: rhel7stig::implementation::rhel-07-000093
#
# Description:
#	This class will ignore ICMPv4 bogus error responses
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

class rhel7stig::implementation::rhel-07-000093 {
	augeas {
		"Set net.ipv4.icmp_ignore_bogus_error_responses=1":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.icmp_ignore_bogus_error_responses 1";
	}	
}
