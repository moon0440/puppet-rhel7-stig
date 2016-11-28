############################################################
# Class: rhel7stig::implementation::rhel-07-000160
#
# Description:
#	This class ensures that the max_log_file value in
#	/etc/audit/auditd.conf is set to an appropriate value
#	( >=6MB )
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

class rhel7stig::implementation::rhel-07-000160 {
	augeas {
		"Modify auditd Max Log File Size":
			context => "/files/etc/audit/auditd.conf",
                        lens    => "simplevars.lns",
                        incl    => "/etc/audit/auditd.conf",
                        changes => "set max_log_file 6",
			onlyif	=> "match max_log_file[.=~regexp('[0-5]')] size>=1",
			notify	=> Service['auditd'];
		"Configure auditd Max Log File Size":
			context => "/files/etc/audit/auditd.conf",
                        lens    => "simplevars.lns",
                        incl    => "/etc/audit/auditd.conf",
                        changes => "set max_log_file 6",
                        onlyif  => "match max_log_file size==0",
			notify  => Service['auditd'];
	}	
}
