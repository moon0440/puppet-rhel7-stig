############################################################
# Class: rhel7stig::implementation::rhel-07-000247
#
# Description:
#       This class will ensure that ntpd is installed,
#	enabled and running
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

class rhel7stig::implementation::rhel-07-000247 {
	package {
                "ntp":
                        ensure  => installed,
			require => Class["rhel7stig::implementation::yum"],
        }

	service {
		"ntpd":
                        enable  => true,
                        ensure  => true,
                        require => Package["ntp"];
        }
}
