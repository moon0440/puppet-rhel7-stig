############################################################
# Class: rhel7stig::implementation::rhel-07-000161
#
# Description:
#	This class ensures that the max_log_file_action
#	value in /etc/audit/auditd.conf is set to rotate
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

class rhel7stig::implementation::rhel-07-000161 {
	augeas {
		"Configure auditd Max Log File Action":
			context => "/files/etc/audit/auditd.conf",
                        lens    => "simplevars.lns",
                        incl    => "/etc/audit/auditd.conf",
                        changes => "set max_log_file_action 'rotate'",
			notify  => Service['auditd'];
	}	
}
