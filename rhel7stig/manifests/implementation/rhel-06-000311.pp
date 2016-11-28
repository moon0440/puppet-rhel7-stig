############################################################
# Class: rhel7stig::implementation::rhel-07-000311
#
# Description:
#	This class ensures that the space_left is set to 
#	500MB in /etc/audit/auditd.conf
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

class rhel7stig::implementation::rhel-07-000311 {
	augeas {
		"Configure how much space_left to trigger action":
			context => "/files/etc/audit/auditd.conf",
			lens    => "simplevars.lns",
			incl    => "/etc/audit/auditd.conf",
			changes => "set space_left 500";
	}	
}
