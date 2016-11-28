############################################################
# Class: rhel7stig::implementation::rhel-07-000383
#
# Description:
#       This class will set permissions on audit logs
#
# Variables:
#       rhel7stig::auditdir
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

class rhel7stig::implementation::rhel-07-000383 {
	augeas {
                "Configure Audit Log Location":
                        context => "/files/etc/audit/auditd.conf",
                        lens    => "simplevars.lns",
                        incl    => "/etc/audit/auditd.conf",
                        changes => "set log_file $rhel7stig::auditdir/audit.log",
                        notify  => Service["auditd"];
	}

	file {
		"Audit log permissions":
			path    =>      "$rhel7stig::auditdir",
			recurse =>      true,
			recurselimit    => 1,
			owner   =>      root,
			group   =>      root,
			mode    =>      640,
	}
}
