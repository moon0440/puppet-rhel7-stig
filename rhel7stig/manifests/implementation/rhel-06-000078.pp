############################################################
# Class: rhel7stig::implementation::rhel-07-000078
#
# Description:
#       This class will implement virtual address space
#	randomization
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

class rhel7stig::implementation::rhel-07-000078 {
	augeas {
		"Set kernel.randomize_va_space=2":
			context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => "set kernel.randomize_va_space 2";
	}	
}
