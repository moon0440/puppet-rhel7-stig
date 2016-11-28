############################################################
# Class: rhel7stig::implementation::rhel-07-000079
#
# Description:
#       This class will prevent processes from having
#	sumultaneous write and execute permissions in memory
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

class rhel7stig::implementation::rhel-07-000079 {
	augeas {
		"Set kernel.exec-shield=1":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set kernel.exec-shield 1";
	}	
}
