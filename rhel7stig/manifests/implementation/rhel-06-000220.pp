############################################################
# Class: rhel7stig::implementation::rhel-07-000220
#
# Description:
#       This class will ensure that ypserv is not
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

class rhel7stig::implementation::rhel-07-000220 {
	package {
                "ypserv":
                        ensure  => absent,
			require => Class["rhel7stig::implementation::yum"],
        }
}
