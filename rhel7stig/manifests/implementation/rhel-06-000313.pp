############################################################
# Class: rhel7stig::implementation::rhel-07-000313
#
# Description:
#	This class ensures that action_mail_acct='root'
#	in /etc/audit/auditd.conf
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

class rhel7stig::implementation::rhel-07-000313 {
	augeas {
		"Configure auditd mail_acct Action on Low Disk Space":
			context => "/files/etc/audit/auditd.conf",
			lens    => "simplevars.lns",
			incl    => "/etc/audit/auditd.conf",
			changes => "set action_mail_acct root";
	}	
}
