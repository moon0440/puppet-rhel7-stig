############################################################
# Class: rhel7stig::implementation::rhel-07-000027
#
# Description:
#       This class will ensure than no 'vc/*' etries exist
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

class rhel7stig::implementation::rhel-07-000027 {
	augeas {
		"Restrict Virtual Console Root Logins":
                        context => "/files/etc/securetty",
                        lens    => "securetty.lns",
                        incl    => "/etc/securetty",
                        changes => "rm *[.=~regexp('vc/.*')]",
	}
}
