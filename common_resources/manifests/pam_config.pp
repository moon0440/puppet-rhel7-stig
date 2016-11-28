############################################################
# Class: common_resources::pam_config
#
# Description:
#  This class will place STIG-compliant /etc/pam.d 
#  system-auth and password-auth files
#
# Variables:
#       None
#
# Facts:
#       None
#
# Files:
#       common_resources/files/system-auth-local
#       common_resources/files/password-auth-local
#
# Templates:
#       None
#
# Dependencies:
#       Service['sssd']
############################################################

class common_resources::pam_config {
   file  { "/etc/pam.d/system-auth-local":
      ensure   => present,
      source   => "puppet:///modules/common_resources/system-auth-local",
      owner    => "root",
      group    => "root",
      mode     => "644",
      require  => Package["sssd"],
   }

   file  { "/etc/pam.d/password-auth-local":
      ensure   => present,
      source   => "puppet:///modules/common_resources/password-auth-local",
      owner    => "root",
      group    => "root",
      mode     => "644",
      require  => Package["sssd"],
   }

   file { "/etc/pam.d/system-auth":
      ensure   => link,
      target   => "/etc/pam.d/system-auth-local",
      require  => File["/etc/pam.d/system-auth-local"],
   }

   file { "/etc/pam.d/password-auth":
      ensure   => link,
      target   => "/etc/pam.d/password-auth-local",
      require  => File["/etc/pam.d/password-auth-local"],
   }
}
