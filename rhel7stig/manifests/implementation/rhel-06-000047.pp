############################################################
# Class: rhel7stig::implementation::rhel-07-000047
#
# Description:
#       This class will ensure the permissions on
#	command files is 0755 or less permissive
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

class rhel7stig::implementation::rhel-07-000047 {
	file {
		[
                        "/bin",
                        "/usr/bin",
                        "/usr/local/bin",
                        "/sbin",
                        "/usr/sbin",
                        "/usr/local/sbin",
		]:
		owner   => root,
		mode    => go-w,
		links   => manage,
		recurse => true;
	}
}
