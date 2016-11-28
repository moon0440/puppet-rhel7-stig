############################################################
# Class: rhel7stig::implementation::rhel-07-000309
#
# Description:
#       This class will remove the insecure_locks option 
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

class rhel7stig::implementation::rhel-07-000309 {
	augeas {
                "Remove insecure_locks options":
                        context =>      "/files/etc/exports",
                        changes =>      "rm dir[*]/client[*]/option[.='insecure_locks']",
			notify  =>      Service['nfs'];
	}
}
