############################################################
# Class: rhel7stig::implementation::rhel-07-000315
#
# Description:
#	This class will disable the bluetooth and net-pf-31
#	protocols on this host
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

class rhel7stig::implementation::rhel-07-000315 {
	augeas {
		"Disable bluetooth":
                        context => "/files/etc/modprobe.d/disabled.conf",
                        lens    => "modprobe.lns",
                        incl    => "/etc/modprobe.d/disabled.conf",
                        changes => [
                                "set install[.='bluetooth'] 'bluetooth'",
                                "set install[.='bluetooth']/command '/bin/false'",
                                "set install[.='net-pf-31'] 'net-pf-31'",
                                "set install[.='net-pf-31']/command '/bin/false'",
                        ];
	}	
}
