############################################################
# Class: rhel7stig::implementation::rhel-07-000289
#
# Description:
#       This class will stop and disable the netconsole
#	service
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
#       None
############################################################

class rhel7stig::implementation::rhel-07-000289 {
	service {
                "netconsole":
                        ensure    => false,
                        enable    => false,
                        hasstatus => true,
        }
}
