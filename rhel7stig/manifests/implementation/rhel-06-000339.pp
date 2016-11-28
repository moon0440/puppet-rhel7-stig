############################################################
# Class: rhel7stig::implementation::rhel-07-000339
#
# Description:
#       This class will secure VSFTP
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

class rhel7stig::implementation::rhel-07-000339 {
	augeas {
	       "Enable Logging of All FTP Transactions":
		       context => "/files/etc/vsftpd/vsftpd.conf",
		       changes => [
			       "set xferlog_enable YES",
			       "set xferlog_std_format NO",
			       "set log_ftp_protocol YES",
		       ];
	}
}
