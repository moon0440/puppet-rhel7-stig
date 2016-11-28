############################################################
# Class: rhel7stig::implementation::rhel-07-000148
#
# Description:
#       This class will ensure that the auditd service is 
#	enabled and started
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

class rhel7stig::implementation::rhel-07-000148 {
	service {
		"auditd":
			enable     => true,
                        ensure     => true,
                        hasstatus  => true,
                        require    => Package["audit"];
	}
}
