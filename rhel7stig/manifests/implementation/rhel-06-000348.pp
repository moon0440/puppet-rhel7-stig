############################################################
# Class: rhel7stig::implementation::rhel-07-000348
#
# Description:
#       This class will configure a banner for FTP connections
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

class rhel7stig::implementation::rhel-07-000348 {
	augeas {
	       "Create Warning Baners for All FTP Users":
		       context => "/files/etc/vsftpd/vsftpd.conf",
		       changes => "set banner_file /etc/issue";
	}
}
