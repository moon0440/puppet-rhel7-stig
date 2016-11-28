############################################################
# Class: rhel7stig::implementation::rhel-07-000098
#
# Description:
#	This class will disable the IPv6 protocol on this 
#	host
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

class rhel7stig::implementation::rhel-07-000098 {
	if $rhel7stig::ipv6 {
		augeas {
			"Remove IPv6 Restrictions":
				context => "/files/etc/modprobe.d/disabled.conf",
				lens    => "modprobe.lns",
                                incl    => "/etc/modprobe.d/disabled.conf",
				changes => "rm options[.='ipv6']",
		}
	}
	else {
		augeas {
			"Disable Functionality of IPv6":
				context => "/files/etc/modprobe.d/disabled.conf",
				lens    => "modprobe.lns",
				incl    => "/etc/modprobe.d/disabled.conf",
				changes => [
					"set options[. = 'ipv6'] 'ipv6'",
					"set options[. = 'ipv6']/disable '1'",
				];
		}	
	}
}
