############################################################
# Class: rhel7stig::implementation::rhel-07-010190
#
# Description:
#  This class will configure the password requirement
#   that passwords must be hashed using SHA512 
#   (/etc/libuser.conf)
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

class rhel7stig::implementation::rhel-07-010190 {
   augeas {
      "Modify SHA512 Hash Requirement for Password in /etc/libuser.conf":
         context  =>   "/files/etc/libuser.conf",
         lens     =>   "yum.lns",
         incl     =>   "/etc/libuser.conf",
         changes  =>   "set defaults/crypt_style sha512";
   }   
}
