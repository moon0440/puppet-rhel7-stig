############################################################
# Class: rhel7stig::implementation::rhel-07-010440
#
# Description:
#	STIG SSHD changes for IDs...
#        RHEL-07-010440
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

class rhel7stig::implementation::rhel-07-010440 {
   augeas {
      "rhel-07-010440":
         context => "/files/etc/ssh/sshd_config",
         lens    => "sshd.lns",
         incl    => "/etc/ssh/sshd_config",
         changes  => 
               # rhel-07-010440
               "set PermitEmptyPasswords no",
      notify => Service['sshd'];
   }
}
