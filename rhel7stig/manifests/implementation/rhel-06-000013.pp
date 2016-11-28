############################################################
# Class: rhel7stig::implementation::rhel-07-000013
#
# Description:
#       This class will ensure that the default of 
#	gpgcheck = 1 is set in /etc/yum.conf
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

class rhel7stig::implementation::rhel-07-000013 {
	augeas {
		"Ensure gpgcheck Enabled In Main Yum Configuration":
			context => "/files/etc/yum.conf",
                        lens    => "yum.lns",
                        incl    => "/etc/yum.conf",
                        changes => "set main/gpgcheck 1";
	}
}
