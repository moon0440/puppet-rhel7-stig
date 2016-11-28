############################################################
# Class: rhel7stig::implementation::rhel-07-000070
#
# Description:
#       This class will disable interactive boot
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

class rhel7stig::implementation::rhel-07-000070 {
	augeas {
		"Disable Interactive Boot":
                        context => "/files/etc/sysconfig/init",
                        lens    => "shellvars.lns",
                        incl    => "/etc/sysconfig/init",
                        changes => "set PROMPT no";
	}	
}
