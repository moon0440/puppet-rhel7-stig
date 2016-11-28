############################################################
# Class: rhel7stig::implementation::rhel-07-000124
#
# Description:
#	This class will disable the dccp protocol on this 
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

class rhel7stig::implementation::rhel-07-000124 {
	augeas {
		"Disable dccp":
                        context => "/files/etc/modprobe.d/disabled.conf",
                        lens    => "modprobe.lns",
                        incl    => "/etc/modprobe.d/disabled.conf",
                        changes => [
                                "set install[.='dccp'] 'dccp'",
                                "set install[.='dccp']/command '/bin/false'",
                        ];
	}	
}
