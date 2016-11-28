############################################################
# Class: rhel7stig::implementation::rhel-07-040330
#
# Description:
#	Verify there are no *.shosts files on the system.
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

class rhel7stig::implementation::rhel-07-040330 {
	tidy { '<all>.shosts':
      path => "/",
      recurse => true,
      matches => "*.shosts"
	}	
}
