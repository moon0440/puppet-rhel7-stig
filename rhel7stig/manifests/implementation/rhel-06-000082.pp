############################################################
# Class: rhel7stig::implementation::rhel-07-000082
#
# Description:
#	This class will disable IPv4 forwarding unless the
#	system is a router
#
# Variables:
#       $rhel7stig::isrouter
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

class rhel7stig::implementation::rhel-07-000082 {

	if $rhel7stig::isrouter { $routervar="1" }
	else { $routervar="0" }

	augeas {
		"Set net.ipv4.ip_forward=$routervar":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.ip_forward $routervar";
	}	
}
