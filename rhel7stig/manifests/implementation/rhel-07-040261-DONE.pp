############################################################
# Class: rhel7stig::implementation::rhel-07-040261
#
# Description:
#
# Variables:
#	None
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

class rhel7stig::implementation::rhel-07-040261 {
   include Class['rhel7stig::implementation::sshd']
}
