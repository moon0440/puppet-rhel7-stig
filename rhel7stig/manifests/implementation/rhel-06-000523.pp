############################################################
# Class: rhel7stig::implementation::rhel-07-000523
#
# Description:
#       This class will ensure that IP6Tables is configured
#	correctly
#
# Variables:
#       $rhel7stig::ipv6
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
###########################################################

class rhel7stig::implementation::rhel-07-000523 {
	if $rhel7stig::ipv6 {
		file {
			"/etc/sysconfig/ip6tables":
				owner   => root,
				group   => root,
				mode    => 600,
				notify  => Service["ip6tables"],
				content => template("iptables/ip6tables.erb");
		}
	}
}
