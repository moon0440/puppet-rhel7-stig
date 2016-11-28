############################################################
# Class: rhel7stig::implementation::rhel-07-010400
#
# Description:
#  This class will ensure that users credentials expire
#	via sssd (memcache_timeout)
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
#
############################################################

class rhel7stig::implementation::rhel-07-010400 {
   augeas { "Add memcache_timeout to /etc/sssd/sssd.conf":
      context  => "/files/etc/sssd/sssd.conf",
      incl     => "/etc/sssd/sssd.conf",
      lens     => "sssd.lns",
      changes  => "set target[.='nss']/memcache_timeout 86400",
      require  => Augeas['Configure base /etc/sssd/sssd.conf'],
   }
}
