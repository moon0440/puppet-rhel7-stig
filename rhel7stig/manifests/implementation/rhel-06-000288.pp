############################################################
# Class: rhel7stig::implementation::rhel-07-000288
#
# Description:
#       This class will ensure that sendmail is not installed
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

class rhel7stig::implementation::rhel-07-000288 {
	package {
                "sendmail":
                        ensure  => absent,
			require => Class["rhel7stig::implementation::yum"],
        }
}
