############################################################
# Class: rhel7stig::implementation::rhel-07-040350
#
# Description:
#  Sysctl settings for RHEL 7 STIG
#
# Variables:
#  None
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

class rhel7stig::implementation::rhel-07-040350 {
   augeas { "RHEL7STIG /etc/sysctl.conf":
         context => "/files/etc/sysctl.conf",
                        lens    => "sysctl.lns",
                        incl    => "/etc/sysctl.conf",
                        changes => ["set net.ipv4.ip_forward 0",
                                    "set net.ipv4.conf.all.accept_source_route 0",
                                    "set net.ipv4.conf.default.accept_source_route 0",
                                    "set net.ipv4.icmp_echo_ignore_broadcasts 0",
                                    "set net.ipv4.conf.default.accept_redirects 0",
                                    "set net.ipv4.conf.all.accept_redirects 0",
                                    "set net.ipv4.conf.default.send_redirects 0",
                                    "set net.ipv4.conf.all.send_redirects 0",
                                    "set net.ipv4.ip_forward 0",
                                    "set net.ipv6.conf.all.accept_source_route 0" ];
   }
   exec { 'sysctl -p':
      path       => ['/usr/sbin'],
      refreshonly => true
   }
}

