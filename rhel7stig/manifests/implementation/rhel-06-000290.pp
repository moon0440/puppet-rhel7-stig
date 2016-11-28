############################################################
# Class: rhel7stig::implementation::rhel-07-000290
#
# Description:
#       This class will set the default runlevel to '3'
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

class rhel7stig::implementation::rhel-07-000290 {
	augeas {
		"Disable X Windows Startup By Setting Runlevel":
			context => "/files/etc/inittab",
			lens    => "inittab.lns",
			incl    => "/etc/inittab",
			changes => [
				"set id/runlevels 3",
			];
	}
}
