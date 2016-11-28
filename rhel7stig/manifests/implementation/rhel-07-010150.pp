############################################################
# Class: rhel7stig::implementation::rhel-07-010150
#
# Description:
#  This class will set max repeating characters in 
#	password to '2' in /etc/security/pwquality.conf
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

class rhel7stig::implementation::rhel-07-010150 {
	augeas {
		"Insert Repeated Character Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	[
               "rm maxrepeat",
               "ins maxrepeat after #comment[.=~regexp(\"maxrepeat.*\")]",
					"set maxrepeat 2"
               ],
			onlyif 	=>	"match #comment[.=~regexp(\"maxrepeat.*\")] size!=0";
		
	} -> augeas {
		"Set Repeated Character Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	"set maxrepeat 2",
	}	
}
