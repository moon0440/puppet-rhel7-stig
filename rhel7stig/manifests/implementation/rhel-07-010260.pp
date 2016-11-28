############################################################
# Class: rhel7stig::implementation::rhel-07-010260
#
# Description:
#  This class will ensure than 'nullok' is removed from
#	all /etc/{system,password}-auth
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
#   File['/etc/pam.d/system-auth-local']
#   File['/etc/pam.d/password-auth-local']
#       
############################################################

class rhel7stig::implementation::rhel-07-010260 {
   notify { "Requiring file /etc/pam.d/system-auth-local for rhel-07-010260":
   } <- File['/etc/pam.d/system-auth-local']

   notify { "Requiring file /etc/pam.d/password-auth-local for rhel-07-010260":
   } <- File['/etc/pam.d/password-auth-local']
}
