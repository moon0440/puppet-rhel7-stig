############################################################
# Class: rhel7stig::implementation::rhel-07-010140
#
# Description:
#  This class will configure the password requirement
#	of including the number of different character types
#  (classes) that must be used in the new password
#  (4) in /etc/security/pwquality.conf
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
#
############################################################

class rhel7stig::implementation::rhel-07-010140 {
	augeas {
		"Insert Character Class Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	[
               "rm minclass",
               "ins minclass after #comment[.=~regexp(\"minclass.*\")]",
					"set minclass 4"
               ],
			onlyif 	=>	"match #comment[.=~regexp(\"minclass.*\")] size!=0";
		
	} -> augeas {
		"Set Character Class Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	"set minclass 4",
	}	
}
