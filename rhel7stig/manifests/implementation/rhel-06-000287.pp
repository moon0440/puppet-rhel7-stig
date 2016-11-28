############################################################
# Class: rhel7stig::implementation::rhel-07-000287
#
# Description:
#       This class will enable and start the postfix service
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
#       rhel7stig::implementation::yum
############################################################

class rhel7stig::implementation::rhel-07-000287 {
	package {
		"postfix":
                        ensure  => latest,
                        require => Class["rhel7stig::implementation::yum"];
        }
	service {
                "postfix":
                        ensure    => true,
                        enable    => true,
                        hasstatus => true,
                        require   => Package["postfix"],
        }
}
