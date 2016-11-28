############################################################
# Class: rhel7stig::implementation::rhel-07-010130
#
# Description:
#  This class will configure the password requirement
#	of including the number of characters that must differ
#  in the new password (8) in /etc/security/pwquality.conf
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
############################################################

class rhel7stig::implementation::rhel-07-010130 {
	augeas {
		"Insert Differing Character Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	[
               "rm difok",
               "ins difok after #comment[.=~regexp(\"difok.*\")]",
					"set difok 8"
               ],
			onlyif 	=>	"match #comment[.=~regexp(\"difok.*\")] size!=0";
		
	} -> augeas {
		"Set Differing Character Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	"set difok 8",
	}	
}
