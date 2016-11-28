############################################################
# Class: rhel7stig::implementation::rhel-07-000234
#
# Description:
#	This class ensures that the IgnoreRhosts is set to 
#	'yes' in /etc/ssh/sshd_config
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

class rhel7stig::implementation::rhel-07-000234 {
	augeas {
		"Disable SSH Support for .rhosts Files":
                        context => "/files/etc/ssh/sshd_config",
                        lens    => "sshd.lns",
                        incl    => "/etc/ssh/sshd_config",
                        changes => "set IgnoreRhosts yes",
	}	
}
