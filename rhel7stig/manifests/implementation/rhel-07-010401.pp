############################################################
# Class: rhel7stig::implementation::rhel-07-010401
#
# Description:
#  This class will ensure that users pam credentials expire
#	via sssd (offline_credentials_expiration)
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
#       Augeas['Configure base /etc/sssd/sssd.conf']
############################################################

class rhel7stig::implementation::rhel-07-010401 {
   augeas { "Add offline_credentials_expiration to /etc/sssd/sssd.conf":
      context  => "/files/etc/sssd/sssd.conf",
      incl     => "/etc/sssd/sssd.conf",
      lens     => "sssd.lns",
      changes  => "set target[.='pam']/offline_credentials_expiration 1",
      require  => Augeas['Configure base /etc/sssd/sssd.conf'],
   }
}
