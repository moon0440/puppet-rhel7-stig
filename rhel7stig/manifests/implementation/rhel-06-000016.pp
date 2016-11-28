############################################################
# Class: rhel7stig::implementation::rhel-07-000016
#
# Description:
#       This class will ensure that AIDE is installed
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

class rhel7stig::implementation::rhel-07-000016 {
	package {
                "aide":
                        ensure  => latest,
			require => Class["rhel7stig::implementation::yum"],
        }
}
