############################################################
# Class: rhel7stig::implementation::rhel-07-000222
#
# Description:
#       This class will ensure that tftp-server is not
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

class rhel7stig::implementation::rhel-07-000222 {
	package {
                "tftp-server":
                        ensure  => absent,
			require => Class["rhel7stig::implementation::yum"],
        }
}
