############################################################
# Class: rhel7stig::implementation::rhel-07-000256
#
# Description:
#       This class will ensure that openldap-servers is not
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

class rhel7stig::implementation::rhel-07-000256 {
	package {
                "openldap-servers":
                        ensure  => absent,
			require => Class["rhel7stig::implementation::yum"],
        }
}
