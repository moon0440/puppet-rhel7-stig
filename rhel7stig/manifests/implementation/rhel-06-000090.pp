############################################################
# Class: rhel7stig::implementation::rhel-07-000090
#
# Description:
#	This class rejects ICMPv4 secure redirects by default
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

class rhel7stig::implementation::rhel-07-000090 {
	augeas {
		"Set net.ipv4.conf.default.secure_redirects=0":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.conf.default.secure_redirects 0";
	}	
}
