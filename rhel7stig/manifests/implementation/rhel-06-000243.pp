############################################################
# Class: rhel7stig::implementation::rhel-07-000243
#
# Description:
#	This class ensures that the Ciphers is set to 
#	'aes128-ctr,aes192-ctr,aes256-ctr,aes128-cbc,
#	3des-cbc,aes192-cbc,aes256-cbc' in 
#	/etc/ssh/sshd_config
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

class rhel7stig::implementation::rhel-07-000243 {
	augeas {
		"Use Only Approved Ciphers":
                        context => "/files/etc/ssh/sshd_config",
                        lens    => "sshd.lns",
                        incl    => "/etc/ssh/sshd_config",
                        changes => "set Ciphers aes128-ctr,aes192-ctr,aes256-ctr,aes128-cbc,3des-cbc,aes192-cbc,aes256-cbc",
	}	
}
