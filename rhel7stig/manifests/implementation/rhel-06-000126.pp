############################################################
# Class: rhel7stig::implementation::rhel-07-000126
#
# Description:
#	This class will disable the rds protocol on this 
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

class rhel7stig::implementation::rhel-07-000126 {
	augeas {
		"Disable rds":
                        context => "/files/etc/modprobe.d/disabled.conf",
                        lens    => "modprobe.lns",
                        incl    => "/etc/modprobe.d/disabled.conf",
                        changes => [
                                "set install[.='rds'] 'rds'",
                                "set install[.='rds']/command '/bin/false'",
                        ];
	}	
}
