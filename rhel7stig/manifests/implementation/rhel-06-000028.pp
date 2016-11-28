############################################################
# Class: rhel7stig::implementation::rhel-07-000028
#
# Description:
#       This class will ensure than no 'ttyS' etries exist
#	in /etc/securetty
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

class rhel7stig::implementation::rhel-07-000028 {
	augeas {
		"Restrict Serial Port Root Logins":
                        context => "/files/etc/securetty",
                        lens    => "securetty.lns",
                        incl    => "/etc/securetty",
                        changes => "rm *[.=~regexp('ttyS.*')]",
	}
}
