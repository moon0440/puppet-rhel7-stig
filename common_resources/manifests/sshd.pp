############################################################
# Class: rhel7stig::sshd
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

class common_resources::sshd {
   package { "openssh-server":
      name => "openssh-server",
      ensure => installed
   }
   package { "openssh-clients":
      name => "openssh-clients",
      ensure => installed
   }
   service { "sshd":
      name => "sshd",
      ensure => running,
      require => Package['openssh-server'],
      enable => true  
   } 
}
