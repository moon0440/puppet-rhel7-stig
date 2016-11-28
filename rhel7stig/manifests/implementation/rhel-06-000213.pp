############################################################
# Class: rhel7stig::implementation::rhel-07-000213
#
# Description:
#       This class will ensure that rsh-server is not
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

class rhel7stig::implementation::rhel-07-000213 {
	package {
                "rsh-server":
                        ensure  => absent,
			require => Class["rhel7stig::implementation::yum"],
        }
}
