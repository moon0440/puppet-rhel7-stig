############################################################
# Class: rhel7stig::implementation::rhel-07-000069
#
# Description:
#       This class will ensure that a password is required
#	when booting to single-user mode
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
#       None
############################################################

class rhel7stig::implementation::rhel-07-000069 {
	augeas {
		"Require Authentication for Single User Mode":
                        context => "/files/etc/sysconfig/init",
                        lens    => "shellvars.lns",
                        incl    => "/etc/sysconfig/init",
                        changes => "set SINGLE /sbin/sulogin";
	}	
}
