############################################################
# Class: rhel7stig::implementation::rhel-07-010402
#
# Description:
#  This class will ensure that known hosts timeout
#	via sssd (ssh_known_hosts_timeout)
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

class rhel7stig::implementation::rhel-07-010402 {
   augeas { "Add ssh_known_hosts_timeout to /etc/sssd/sssd.conf":
      context  => "/files/etc/sssd/sssd.conf",
      incl     => "/etc/sssd/sssd.conf",
      lens     => "sssd.lns",
      changes  => "set target[.='ssh']/ssh_known_hosts_timeout 86400",
      require  => Augeas['Configure base /etc/sssd/sssd.conf'],
   }
}
