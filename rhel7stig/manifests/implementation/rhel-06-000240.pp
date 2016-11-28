############################################################
# Class: rhel7stig::implementation::rhel-07-000240
#
# Description:
#	This class ensures that the Banner is set to
#	'/etc/issue' in /etc/ssh/sshd_config
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

class rhel7stig::implementation::rhel-07-000240 {
	augeas {
		"Enable SSH Warning Banner":
                        context => "/files/etc/ssh/sshd_config",
                        lens    => "sshd.lns",
                        incl    => "/etc/ssh/sshd_config",
                        changes => "set Banner /etc/issue",
	}	
}
