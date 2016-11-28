############################################################
# Class: rhel7stig::implementation::rhel-07-040331
#
# Description:
#	Verify there are no shosts.equiv files on the system.
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

class rhel7stig::implementation::rhel-07-040331 {
	tidy { 'shosts.equiv':
      path => "/",
      recurse => true,
      matches => "shosts.equiv"
	}	
}
