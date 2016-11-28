############################################################
# Class: rhel7stig::implementation::rhel-07-000515
#
# Description:
#       This class will remove the all_squash option 
#	from any NFS share
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

class rhel7stig::implementation::rhel-07-000515 {
	augeas {
                "Remove all_squash options":
                        context =>      "/files/etc/exports",
                        changes =>      "rm dir[*]/client[*]/option[.='all_squash']",
                        notify  =>      Service['nfs'];
	}
}
