############################################################
# Class: rhel7stig::implementation::rhel-07-000032
#
# Description:
#       This class will ensure root is the only user with 
#	uid=0
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

class rhel7stig::implementation::rhel-07-000032 {
	exec {
		"Verify Only Root Has UID 0":
                        command   => "/bin/awk -F: '(\$3 == \"0\" && \$1 !=\"root\") {print}' /etc/passwd",
                        user      => root,
                        logoutput => true;
	}
}
