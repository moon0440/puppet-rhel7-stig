############################################################
# Class: rhel7stig::implementation::rhel-07-000005
#
# Description:
#       This class will set space_left_action = email in 
#	/etc/audit/auditd.conf
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
#       Package 'audit'
############################################################

class rhel7stig::implementation::rhel-07-000005 {
	augeas {
		"Configure auditd space_left Action on Low Disk Space":
			context => "/files/etc/audit/auditd.conf",
                        lens    => "simplevars.lns",
                        incl    => "/etc/audit/auditd.conf",
                        changes => "set space_left_action email",
			require => Package['audit'],
	}
}
