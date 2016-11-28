############################################################
# Class: rhel7stig::implementation::rhel-07-000302
#
# Description:
#       This class will configure a cron job to check the
#	AIDE database weekly
#
# Variables:
#       None
#
# Facts:
#       None
#
# Files:
#       aide.cron
#
# Templates:
#       None
#
# Dependencies:
#       None
###########################################################

class rhel7stig::implementation::rhel-07-000302 {
	file {
		"/etc/cron.weekly/aide": # changed cron.daily=> cron.weekly
                        owner  => root,
                        group  => root,
                        mode   => 700,
                        source => "puppet:///modules/rhel7stig/aide.cron";
	}
}
