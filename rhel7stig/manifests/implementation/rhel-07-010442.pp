############################################################
# Class: rhel7stig::implementation::rhel-07-010442
#
# Description:
#	STIG SSHD changes for IDs...
#        RHEL-07-010442
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

class rhel7stig::implementation::rhel-07-010442 {
   augeas {
      "rhel-07-010442":
         context => "/files/etc/ssh/sshd_config",
         lens    => "sshd.lns",
         incl    => "/etc/ssh/sshd_config",
         changes  => 
               # rhel-07-010442
               "set HostbasedAuthentication no",
      require => Package['openssh-server'],
      notify => Service['sshd'];
   }
}
