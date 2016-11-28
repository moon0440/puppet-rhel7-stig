############################################################
# Class: rhel7stig::implementation::rhel-07-010270
#
# Description:
#	STIG SSHD changes for IDs...
#        RHEL-07-010270
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

class rhel7stig::implementation::rhel-07-010270 {
   augeas { "rhel-07-010270":
         context => "/files/etc/ssh/sshd_config",
         lens    => "sshd.lns",
         incl    => "/etc/ssh/sshd_config",
         changes  => 
               # rhel-07-010270
               "set PermitEmptyPasswords no",
      require => Package['openssh-server'],
      notify => Service['sshd'];
   }
}
