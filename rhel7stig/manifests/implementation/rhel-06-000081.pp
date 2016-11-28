############################################################
# Class: rhel7stig::implementation::rhel-07-000081
#
# Description:
#       This class will disable ICMPv4 redirects from all
#	interfaces
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

class rhel7stig::implementation::rhel-07-000081 {
	augeas {
		"Set net.ipv4.conf.all.send_redirects=0":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.conf.all.send_redirects 0";
	}	
}
