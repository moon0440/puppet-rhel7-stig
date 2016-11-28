############################################################
# Class: rhel7stig::implementation::rhel-07-000236
#
# Description:
#	This class ensures that the HostbasedAuthentication
#	is set to 'no' in /etc/ssh/sshd_config
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

class rhel7stig::implementation::rhel-07-000236 {
	augeas {
		"Disable Host-Based Authentication":
                        context => "/files/etc/ssh/sshd_config",
                        lens    => "sshd.lns",
                        incl    => "/etc/ssh/sshd_config",
                        changes => "set HostbasedAuthentication no",
	}	
}
