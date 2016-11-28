############################################################
# Class: rhel7stig::implementation::rhel-07-000127
#
# Description:
#	This class will disable the tipc protocol on this 
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

class rhel7stig::implementation::rhel-07-000127 {
	augeas {
		"Disable tipc":
                        context => "/files/etc/modprobe.d/disabled.conf",
                        lens    => "modprobe.lns",
                        incl    => "/etc/modprobe.d/disabled.conf",
                        changes => [
                                "set install[.='tipc'] 'tipc'",
                                "set install[.='tipc']/command '/bin/false'",
                        ];
	}	
}
