############################################################
# Class: rhel7stig::implementation::rhel-07-000227
#
# Description:
#	This class ensures that the SSH Protocol is set to
#	'2' in /etc/ssh/sshd_config
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

class rhel7stig::implementation::rhel-07-000227 {
	augeas {
		"Allow Only SSH Protocol 2":
                        context => "/files/etc/ssh/sshd_config",
                        lens    => "sshd.lns",
                        incl    => "/etc/ssh/sshd_config",
                        changes => "set Protocol 2",
	}	
}
