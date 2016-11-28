############################################################
# Class: common_resources::sssd
#
# Description:
#  This class will ensure sssd is installed, and running
#	with at least the minimum configuration
#
# Variables:
#       $package_ensure, $service_ensure
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

class common_resources::sssd (
   $package_ensure,
   $service_ensure,)
{
   package { "sssd":
      ensure         => $package_ensure,
   }

   service { "sssd":
      enable   => true,
      ensure   => $service_ensure,
      require  => Augeas['Configure base /etc/sssd/sssd.conf'],
   }

   file  { "/etc/sssd/sssd.conf":
      ensure   => present,
      owner    => "root",
      group    => "root",
      mode     => "600",
      require  => Package["sssd"],
   }

   augeas { "Configure base /etc/sssd/sssd.conf":
      context  => "/files/etc/sssd/sssd.conf",
      incl     => "/etc/sssd/sssd.conf",
      lens     => "sssd.lns",
      changes  => [
         "set target[.='sssd'] sssd",
         "set target[.='sssd']/domains LOCAL",
         "set target[.='sssd']/services 'nss, pam'",
         "set target[.='sssd']/config_file_version 2",
         "set target[.='nss'] nss",
         "set target[.='pam'] pam",
         "set target[.='ssh'] ssh",
         "set target[.='domain/LOCAL'] 'domain/LOCAL'",
         "set target[.='domain/LOCAL']/id_provider local",
         "set target[.='domain/LOCAL']/auth_provider local",
         "set target[.='domain/LOCAL']/access_provider permit",
         ],
      require  => File["/etc/sssd/sssd.conf"],
   }

   augeas { "Configure NSS for sssd": 
      context  => "/files/etc/nsswitch.conf",
      incl     => "/etc/nsswitch.conf",
      lens     => "nsswitch.lns",
      changes  => [
         "set database[.='passwd']/service[.='sss'] sss",
         "set database[.='shadow']/service[.='sss'] sss",
         "set database[.='group']/service[.='sss'] sss",
         "set database[.='services']/service[.='sss'] sss",
         "set database[.='netgroup']/service[.='sss'] sss",
         "set database[.='automount']/service[.='sss'] sss",
         ],
      require  => Service['sssd'],
   }
}
