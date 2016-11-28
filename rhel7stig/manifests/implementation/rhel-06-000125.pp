############################################################
# Class: rhel7stig::implementation::rhel-07-000125
#
# Description:
#	This class will disable the sctp protocol on this 
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

class rhel7stig::implementation::rhel-07-000125 {
	augeas {
		"Disable sctp":
                        context => "/files/etc/modprobe.d/disabled.conf",
                        lens    => "modprobe.lns",
                        incl    => "/etc/modprobe.d/disabled.conf",
                        changes => [
                                "set install[.='sctp'] 'sctp'",
                                "set install[.='sctp']/command '/bin/false'",
                        ];
	}	
}
