############################################################
# Class: rhel7stig::implementation::rhel-07-000299
#
# Description:
#       This class will set max repeating characters in 
#	password to '3' in /etc/pam.d/system-auth
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
###########################################################

class rhel7stig::implementation::rhel-07-000299 {
	augeas {
		"Modify Repeating Character Requirement for Password in /etc/pam.d/system-auth":
                        context =>      "/files/etc/pam.d",
                        changes =>      "set system-auth/*[type='password'][module='pam_cracklib.so']/argument[.=~regexp(\"maxrepeat.*\")] 'maxrepeat=3'",
                        onlyif  =>      "match system-auth/*[type='password'][module='pam_cracklib.so']/argument[.=~regexp(\"maxrepeat=[4-9]\")] size>=1";

                "Add Repeating Character Requirement for Password in /etc/pam.d/system-auth":
                        context =>      "/files/etc/pam.d",
                        changes =>      "set system-auth/*[type='password'][module='pam_cracklib.so']/argument[.=~regexp(\"maxrepeat.*\")] 'maxrepeat=3'",
                        onlyif  =>      "match system-auth/*[type='password'][module='pam_cracklib.so']/argument[.=~regexp(\"maxrepeat.*\")] size==0";
	}
}
