############################################################
# Class: rhel7stig::implementation::rhel-07-000525
#
# Description:
#       This class will ensure that auditing is enabled at
#	boot
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
###########################################################

class rhel7stig::implementation::rhel-07-000525 {
	augeas {
		"Enable Auditing for Processes Which Start Prior to the Audit Daemon":
			context => "/files/etc/grub.conf",
			lens    => "grub.lns",
			incl    => "/etc/grub.conf",
			changes => "set title/kernel/audit 1";
	}
}
