############################################################
# Class: rhel7stig::implementation::rhel-07-000239
#
# Description:
#	This class ensures that the PermitEmptyPasswords is
#	set to 'no' in /etc/ssh/sshd_config
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

class rhel7stig::implementation::rhel-07-000239 {
	augeas {
		"Disable SSH Access via Empty Passwords":
                        context => "/files/etc/ssh/sshd_config",
                        lens    => "sshd.lns",
                        incl    => "/etc/ssh/sshd_config",
                        changes => "set PermitEmptyPasswords no",
	}	
}
