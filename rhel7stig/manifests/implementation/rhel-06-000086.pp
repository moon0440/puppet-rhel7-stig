############################################################
# Class: rhel7stig::implementation::rhel-07-000086
#
# Description:
#	This class will prevent ICMPv4 secure redirects on
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

class rhel7stig::implementation::rhel-07-000086 {
	augeas {
		"Set net.ipv4.conf.all.secure_redirects=0":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.conf.all.secure_redirects 0";
	}	
}
