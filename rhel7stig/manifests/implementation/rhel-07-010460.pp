############################################################
# Class: rhel7stig::implementation::rhel-07-010460
#
# Description:
#       This class will configure the GRUB bootloader
#	password in /etc/grub.conf
#
# Variables:
#       $rhel7stig::grupass
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

class rhel7stig::implementation::rhel-07-010460 {
	file { "/etc/grub.d/01_users":
      owner => "root",
      group => "root",
      mode  => "755",
      content  => template("rhel7stig/

		"Set the GRUB Bootloader SHA512 Password":
			context	=>	"/files/etc/grub.conf",
			lens    =>	"grub.lns",
                        incl    =>	"/etc/grub.conf",
			changes	=>	[
				"rm password",
				"ins password after timeout",
				"clear password/encrypted",
				"set password $rhel7stig::grubpass",
			],
			onlyif	=>	"match password[.=~regexp('\$6.*')] size==0";
	}	
}
