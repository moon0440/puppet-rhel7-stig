############################################################
# Class: rhel7stig::implementation::rhel-07-000015
#
# Description:
#       This class will ensure that all yum repositories 
#	utilize gpgcheck
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

class rhel7stig::implementation::rhel-07-000015 {
	augeas {
		"Ensure gpgcheck Enabled For All Yum Package Repositories":
                        context => "/files/etc/yum.repos.d",
                        changes => "rm */*/gpgcheck[.='0']";
	}
}
