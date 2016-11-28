############################################################
# Class: rhel7stig::implementation::rhel-07-010250
#
# Description:
#  This class will set the minimum password length of a
#	password to '15' in /etc/security/pwquality.conf
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

class rhel7stig::implementation::rhel-07-010250 {
	augeas {
		"Insert Minimum Length Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	[
               "rm minlen",
               "ins minlen after #comment[.=~regexp(\"minlen.*\")]",
					"set minlen 15"
               ],
			onlyif 	=>	"match #comment[.=~regexp(\"minlen.*\")] size!=0";
		
	} -> augeas {
		"Set Minimum Length Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	"set minlen 15",
	}	
}
