############################################################
# Class: rhel7stig::implementation::rhel-07-010040
#
# Description:
#       This class will ensure that the /etc/issue file
#	meets DoD direction
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

class rhel7stig::implementation::rhel-07-010040 {
	file {
                "/etc/issue":
                        owner  => root,
                        group  => root,
                        mode   => 444,
                        source => "puppet:///modules/rhel7stig/issue",
        }
}
