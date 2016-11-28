############################################################
# Class: rhel7stig::implementation::rhel-07-000503
#
# Description:
#	This class will disable the usb-storage protocol on
#	this host
#
# Variables:
#	None
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

class rhel7stig::implementation::rhel-07-000503 {
	augeas {
		"Disable usb-storage":
                        context => "/files/etc/modprobe.d/disabled.conf",
                        lens    => "modprobe.lns",
                        incl    => "/etc/modprobe.d/disabled.conf",
                        changes => [
                                "set install[.='usb-storage'] 'usb-storage'",
                                "set install[.='usb-storage']/command '/bin/false'",
                        ];
	}	
}
