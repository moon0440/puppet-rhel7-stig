############################################################
# Class: rhel7stig::implementation::rhel-07-000237
#
# Description:
#	This class ensures that the PermitRootLogin is set
#	to 'no' in /etc/ssh/sshd_config
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

class rhel7stig::implementation::rhel-06-000237 {
	augeas {
		"Disable SSH Root Login":
                        context => "/files/etc/ssh/sshd_config",
                        lens    => "sshd.lns",
                        incl    => "/etc/ssh/sshd_config",
                        changes => "set PermitRootLogin no",
	}	
}
