############################################################
# Class: rhel7stig::implementation::rhel-07-000206
#
# Description:
#       This class will ensure that telnet-server is not
#	installed
#
# Variables:
#       None
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
#       Class rhel7stig::implementation::yum
###########################################################

class rhel7stig::implementation::rhel-07-000206 {
	package {
                "telnet-server":
                        ensure  => absent,
			require => Class["rhel7stig::implementation::yum"],
        }
}
