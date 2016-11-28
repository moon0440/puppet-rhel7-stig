############################################################
# Class: rhel7stig::implementation::rhel-07-010090
#
# Description:
#       This class will configure the password requirement
#	of including an uppercase character in 
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

class rhel7stig::implementation::rhel-07-010090 {
	augeas {
		"Insert Uppercase Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	[
               "rm ucredit",
               "ins ucredit after #comment[.=~regexp(\"ucredit.*\")]",
					"set ucredit -1"
               ],
			onlyif 	=>	"match #comment[.=~regexp(\"ucredit.*\")] size!=0";
		
	} -> augeas {
		"Set Uppercase Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	"set ucredit -1",
	}	
}
