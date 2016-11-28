############################################################
# Class: rhel7stig::implementation::rhel-07-010420
#
# Description:
#  This class will configure FAIL_DELAY in 
#	/etc/login.defs
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

class rhel7stig::implementation::rhel-07-010420 {
   augeas {
      "Set FAIL_DELAY in /etc/login.defs":
         context  => "/files/etc/login.defs",
         lens     => "login_defs.lns",
         incl     => "/etc/login.defs",
         changes  => "set FAIL_DELAY 4",
   }	
}
