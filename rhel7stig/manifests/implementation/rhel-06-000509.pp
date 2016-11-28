############################################################
# Class: rhel7stig::implementation::rhel-07-000509
#
# Description:
#	This class ensures that audit records are forwarded
#	to the syslog service
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

class rhel7stig::implementation::rhel-07-000509 {
	augeas {
		"Configure auditd to use audispd plugin":
			context => "/files/etc/audisp/plugins.d/syslog.conf",
			lens    => "simplevars.lns",
			incl    => "/etc/audisp/plugins.d/syslog.conf",
			changes => "set active yes";
	}	
}
