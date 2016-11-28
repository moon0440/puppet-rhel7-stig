############################################################
# Class: rhel7stig::implementation::rhel-07-000095
#
# Description:
#	This class will configure the system to utilize TCP
#	syncookies
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

class rhel7stig::implementation::rhel-07-000095 {
	augeas {
		"Set net.ipv4.tcp_syncookies=1":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.tcp_syncookies 1";
	}	
}
