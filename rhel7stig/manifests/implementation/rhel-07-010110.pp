############################################################
# Class: rhel7stig::implementation::rhel-07-010110
#
# Description:
#       This class will configure the password requirement
#	of including a digit character in 
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

class rhel7stig::implementation::rhel-07-010110 {
	augeas {
		"Insert Digit Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	[
               "rm dcredit",
               "ins dcredit after #comment[.=~regexp(\"dcredit.*\")]",
					"set dcredit -1"
               ],
			onlyif 	=>	"match #comment[.=~regexp(\"dcredit.*\")] size!=0";
		
	} -> augeas {
		"Set Digit Requirement for Password in /etc/security/pwquality.conf":
			context	=>	"/files/etc/security/pwquality.conf",
			lens	=>	"simplevars.lns",
			incl	=>	"/etc/security/pwquality.conf",
			changes	=>	"set dcredit -1",
	}	
}
