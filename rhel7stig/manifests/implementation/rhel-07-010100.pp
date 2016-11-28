############################################################
# Class: rhel7stig::implementation::rhel-07-010100
#
# Description:
#       This class will configure the password requirement
#	of including a lowercase character in 
#	/etc/security/pwquality.conf
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

class rhel7stig::implementation::rhel-07-010100 {
	augeas {
		"Insert Lowercase Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	[
               "rm lcredit",
               "ins lcredit after #comment[.=~regexp(\"lcredit.*\")]",
					"set lcredit -1"
               ],
			onlyif 	=>	"match #comment[.=~regexp(\"lcredit.*\")] size!=0";
		
	} -> augeas {
		"Set Lowercase Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	"set lcredit -1",
	}	
}
