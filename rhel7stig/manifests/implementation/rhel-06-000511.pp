############################################################
# Class: rhel7stig::implementation::rhel-07-000511
#
# Description:
#	This class ensures that administrators are notified
#	when there are disk errors on the audit partion
#
# Variables:
#	None
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

class rhel7stig::implementation::rhel-07-000511 {
	augeas {
		"Configure auditd disk_error_action on Disk Errors":
			context => "/files/etc/audit/auditd.conf",
			lens    => "simplevars.lns",
			incl    => "/etc/audit/auditd.conf",
			changes => "set disk_error_action syslog";
	}	
}
