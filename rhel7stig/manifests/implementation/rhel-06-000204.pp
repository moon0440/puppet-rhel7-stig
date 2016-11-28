############################################################
# Class: rhel7stig::implementation::rhel-07-000204
#
# Description:
#       This class will ensure that xinetd is not installed
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

class rhel7stig::implementation::rhel-07-000204 {
	package {
                "xinetd":
                        ensure  => absent,
			require => Class["rhel7stig::implementation::yum"],
        }
}
