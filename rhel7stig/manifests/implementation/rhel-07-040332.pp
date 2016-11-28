############################################################
# Class: rhel7stig::implementation::sshd
#
# Description:
#	STIG SSHD changes for IDs...
#        RHEL-07-010270
#        RHEL-07-010440
#        RHEL-07-010441
#        RHEL-07-040110
#        RHEL-07-040170
#        RHEL-07-040190
#        RHEL-07-040191
#        RHEL-07-040260
#        RHEL-07-040261
#        RHEL-07-040300
#        RHEL-07-040301
#        RHEL-07-040310
#        RHEL-07-040334
#        RHEL-07-040332
#        RHEL-07-040333
#        RHEL-07-040540
#        RHEL-07-040590
#        RHEL-07-040620
#        RHEL-07-040660
#        RHEL-07-040670
#        RHEL-07-040680
#        RHEL-07-040690
#        RHEL-07-040700
#	
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

class rhel7stig::implementation::sshd {
   augeas {
      "RHEL7STIG /etc/ssh/sshd_config":
         context => "/files/etc/ssh/sshd_config",
         lens    => "sshd.lns",
         incl    => "/etc/ssh/sshd_config",
         changes  => [
               # rhel-07-010270, rhel-07-010440
               "set PermitEmptyPasswords no",
               # rhel-07-010441
               "set PermitUserEnvironment no",
               # rhel-07-010442
               "set HostbasedAuthentication no",
               # rhel-07-040110
               "set Ciphers aes128-ctr,aes192-ctr,aes256-ctr",
               # rhel-07-040170
               "set banner /etc/issue",
               # rhel-07-040190
               "set ClientAliveInterval 600",
               # rhel-07-040191
               "set ClientAliveCountMax 0",
               # rhel-07-040301
               "set PrintLastLog yes",
               # rhel-07-040310
               "set PermitRootLogin no",
               # rhel-07-040334
               "set IgnoreRhosts yes",
               # rhel-07-040332
               "set IgnoreUserKnownHosts yes",
               # rhel-07-040333
               "set RhostsRSAAuthentication yes",
               # rhel-07-040540
               "set X11Forwarding yes",
               # rhel-07-040590
               "set Protocol 2",
               # rhel-07-040620
               "set /files/etc/ssh/sshd_config/MACs/1 hmac-sha2-512",
               "set /files/etc/ssh/sshd_config/MACs/2 hmac-sha2-256",
               "rm /files/etc/ssh/sshd_config/MACs/*[position()>2]",
               # rhel-07-040660
               "set GSSAPIAuthentication no",
               # rhel-07-040670
               "set KerberosAuthentication no",
               # rhel-07-040680
               "set StrictModes yes",
               # rhel-07-040690
               "set UsePrivilegeSeparation yes",
               # rhel-07-040700
               "set Compression delayed ",
               ],
      require => Package['openssh-server'],
      notify => Service['sshd'];
   }
   package { 
      # rhel-07-040260
      "openssh-server":
      name => "openssh-server",
      ensure => installed
   }
   package { 
      # rhel-07-040260
      "openssh-clients":
      name => "openssh-clients",
      ensure => installed
   }
   service {
      # rhel-07-040261
      "sshd":
      name => "sshd",
      ensure => running,
      enable => true  
   } 
}
