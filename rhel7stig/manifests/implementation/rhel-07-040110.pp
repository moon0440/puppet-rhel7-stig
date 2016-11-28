############################################################
# Class: rhel7stig::implementation::rhel-07-040110
#
# Description:
#	STIG SSHD changes for IDs...
#        RHEL-07-040110
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

class rhel7stig::implementation::rhel-07-040110 {
   augeas {
      "rhel-07-040110":
         context => "/files/etc/ssh/sshd_config",
         lens    => "sshd.lns",
         incl    => "/etc/ssh/sshd_config",
         changes  => 
               # rhel-07-040110
               "set Ciphers aes128-ctr,aes192-ctr,aes256-ctr",
      require => Package['openssh-server'],
      notify => Service['sshd'];
   }
}
