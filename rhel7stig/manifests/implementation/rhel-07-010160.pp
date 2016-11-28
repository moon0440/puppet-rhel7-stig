############################################################
# Class: rhel7stig::implementation::rhel-07-010160
#
# Description:
#  This class will set max repeating character classes in 
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

class rhel7stig::implementation::rhel-07-010160 {
	augeas {
		"Insert Repeated Character Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	[
               "rm maxclassrepeat",
               "ins maxclassrepeat after #comment[.=~regexp(\"maxclassrepeat.*\")]",
					"set maxclassrepeat 4"
               ],
			onlyif 	=>	"match #comment[.=~regexp(\"maxclassrepeat.*\")] size!=0";
		
	} -> augeas {
		"Set Repeated Character Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	"set maxclassrepeat 4",
	}	
}
