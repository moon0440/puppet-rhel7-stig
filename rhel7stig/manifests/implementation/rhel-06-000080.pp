############################################################
# Class: rhel7stig::implementation::rhel-07-000080
#
# Description:
#       This class will disable default ICMPv4 redirects
#
# Variables:
#       None
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

class rhel7stig::implementation::rhel-07-000080 {
	augeas {
		"Set net.ipv4.conf.default.send_redirects=0":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.conf.default.send_redirects 0";
	}	
}
