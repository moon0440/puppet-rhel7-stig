############################################################
# Class: rhel7stig::implementation::rhel-07-000510
#
# Description:
#	This class ensures that administrators are notified
#	when the audit partition is full
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

class rhel7stig::implementation::rhel-07-000510 {
	augeas {
		"Configure auditd disk_full_action on Full Disk":
			context => "/files/etc/audit/auditd.conf",
			lens    => "simplevars.lns",
			incl    => "/etc/audit/auditd.conf",
			changes => "set disk_full_action syslog";
	}	
}
