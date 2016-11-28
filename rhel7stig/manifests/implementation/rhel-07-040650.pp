############################################################
# Class: rhel7stig::implementation::rhel-07-040650
#
# Description:
#	If an unauthorized user obtains the private SSH host key file, the host could be impersonated.
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

class rhel7stig::implementation::rhel-07-040650 {
   file { "/etc/ssh/" : 
      recurse => true,
      recurselimit => 1,
      mode => 0600,
      ignore => "*[^key$]",
   }
}
