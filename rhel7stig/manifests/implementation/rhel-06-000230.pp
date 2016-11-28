############################################################
# Class: rhel7stig::implementation::rhel-07-000230
#
# Description:
#	This class ensures that the ClientAliveInterval is
#	set to '900' in /etc/ssh/sshd_config
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

class rhel7stig::implementation::rhel-07-000230 {
	augeas {
		"Set SSH Idle Timeout Interval":
                        context => "/files/etc/ssh/sshd_config",
                        lens    => "sshd.lns",
                        incl    => "/etc/ssh/sshd_config",
                        changes => "set ClientAliveInterval 900",
	}	
}
