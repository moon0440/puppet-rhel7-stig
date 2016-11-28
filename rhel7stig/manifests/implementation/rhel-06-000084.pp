############################################################
# Class: rhel7stig::implementation::rhel-07-000084
#
# Description:
#	This class will prevent ICMPv4 redirect packets on 
#	all interfaces
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

class rhel7stig::implementation::rhel-07-000084 {
	augeas {
		"Set net.ipv4.conf.all.accept_redirects=0":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.conf.all.accept_redirects 0";
	}	
}
