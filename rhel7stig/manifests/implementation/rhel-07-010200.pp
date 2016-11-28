############################################################
# Class: rhel7stig::implementation::rhel-07-010200
#
# Description:
#  This class will configure PASS_MIN_DAYS in 
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

class rhel7stig::implementation::rhel-07-010200 {
   augeas {
      "Set PASS_MIN_DAYS in /etc/login.defs":
         context  => "/files/etc/login.defs",
         lens     => "login_defs.lns",
         incl     => "/etc/login.defs",
         changes  => "set PASS_MIN_DAYS 1",
   }	
}
