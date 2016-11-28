############################################################
# Class: rhel7stig::implementation::rhel-07-000045
#
# Description:
#       This class will ensure the permissions on
#	library files is 0755 or less permissive
#
# Variables:
#       None
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

class rhel7stig::implementation::rhel-07-000045 {
	file {
		[
			"/lib",
			"/lib64",
			"/usr/lib",
			"/usr/lib64",
		]:
		owner   => root,
		mode    => go-w,
		links   => manage,
		recurse => true;
	}
}
