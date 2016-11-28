############################################################
# Class: rhel7stig::implementation::rhel-07-000088
#
# Description:
#	This class will ensure that martian pacckets are 
#	logged
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

class rhel7stig::implementation::rhel-07-000088 {
	augeas {
		"Set net.ipv4.conf.all.log_martians=1":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set net.ipv4.conf.all.log_martians 1";
	}	
}
