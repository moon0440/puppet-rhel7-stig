############################################################
# Class: rhel7stig::implementation::rhel-07-000231
#
# Description:
#	This class ensures that the ClientAliveCountMax is
#	set to '0' in /etc/ssh/sshd_config
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

class rhel7stig::implementation::rhel-07-000231 {
	augeas {
		"Set SSH Client Alive Count":
                        context => "/files/etc/ssh/sshd_config",
                        lens    => "sshd.lns",
                        incl    => "/etc/ssh/sshd_config",
                        changes => "set ClientAliveCountMax 0",
	}	
}
