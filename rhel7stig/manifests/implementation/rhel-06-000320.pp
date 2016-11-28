############################################################
# Class: rhel7stig::implementation::rhel-07-000320
#
# Description:
#       This class will deploy a STIG compliant iptables
#	configuration
#
# Variables:
#       rhel7stig::puppetserver
#
# Facts:
#       None
#
# Files:
#       None
#
# Templates:
#       rhel7stig/iptables
#
# Dependencies:
#       None
###########################################################

class rhel7stig::implementation::rhel-07-000320 {
	file {
		"/etc/sysconfig/iptables":
			owner   => root,
			group   => root,
			mode    => 600,
			notify  => Service["iptables"],
			content  => template("rhel7stig/iptables.erb");
	}
}
