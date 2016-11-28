############################################################
# Class: rhel7stig::implementation::rhel-07-010180
#
# Description:
#  This class will configure the password requirement
#   that passwords must be hashed using SHA512 
#   (/etc/login.defs)
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

class rhel7stig::implementation::rhel-07-010180 {
   augeas {
      "Modify SHA512 Hash Requirement for Password in /etc/login.defs":
         context  =>   "/files/etc/login.defs",
         lens     =>   "login_defs.lns",
         incl     =>   "/etc/login.defs",
         changes  =>   "set ENCRYPT_METHOD SHA512";
   }   
}
