############################################################
# Class: rhel7stig::implementation::rhel-07-000092
#
# Description:
#	This class ignores ICMPv4 broadcast messages
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

class rhel7stig::implementation::rhel-07-000092 {
	augeas {
		"Set net.ipv4.icmp_echo_ignore_broadcasts=1":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.icmp_echo_ignore_broadcasts 1";
	}	
}
