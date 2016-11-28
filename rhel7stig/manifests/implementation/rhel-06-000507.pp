############################################################
# Class: rhel7stig::implementation::rhel-07-000507
#
# Description:
#	This class ensures that the PrintLastLog is set to
#	yes in /etc/ssh/sshd_config
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

class rhel7stig::implementation::rhel-07-000507 {
	augeas {
		"Print User Last Logon":
			context => "/files/etc/ssh/sshd_config",
			lens    => "sshd.lns",
			incl    => "/etc/ssh/sshd_config",
			changes => [
				"set PrintLastLog yes",
			];
	}	
}
