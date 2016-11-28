############################################################
# Class: rhel7stig::implementation::rhel-07-000345
#
# Description:
#       This class will set the umask in /etc/login.defs to
#	077
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

class rhel7stig::implementation::rhel-07-000345 {
	augeas {
                "Set System Default UMASK":
                        context => "/files/etc/login.defs",
                        lens    => "login_defs.lns",
                        incl    => "/etc/login.defs",
                        changes => "set UMASK 077",
	}
}
