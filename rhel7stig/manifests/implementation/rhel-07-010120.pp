############################################################
# Class: rhel7stig::implementation::rhel-07-010120
#
# Description:
#       This class will configure the password requirement
#	of including a special character in 
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

class rhel7stig::implementation::rhel-07-010120 {
	augeas {
		"Insert Special Character Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	[
               "rm ocredit",
               "ins ocredit after #comment[.=~regexp(\"ocredit.*\")]",
					"set ocredit -1"
               ],
			onlyif 	=>	"match #comment[.=~regexp(\"ocredit.*\")] size!=0";
		
	} -> augeas {
		"Set Special Character Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	"set ocredit -1",
	}	
}
