############################################################
# Class: rhel7stig::implementation::rhel-07-010371
#
# Description:
#  This class will configure pam to force administrators
#	to unlock accounts locked by excessive login attempts
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

class rhel7stig::implementation::rhel-07-010371 {
   notify { "Requiring file /etc/pam.d/system-auth-local for rhel-07-010371":
   } <- File['/etc/pam.d/system-auth-local']

   notify { "Requiring file /etc/pam.d/password-auth-local for rhel-07-010371":
   } <- File['/etc/pam.d/password-auth-local']
}
