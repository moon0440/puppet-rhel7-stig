############################################################
# Class: rhel7stig::implementation::rhel-07-000241
#
# Description:
#	This class ensures that the PermitUserEnvironment
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

class rhel7stig::implementation::rhel-07-000241 {
	augeas {
		"Do Not Allow SSH Environment Options":
                        context => "/files/etc/ssh/sshd_config",
                        lens    => "sshd.lns",
                        incl    => "/etc/ssh/sshd_config",
                        changes => "set PermitUserEnvironment no",
	}	
}
