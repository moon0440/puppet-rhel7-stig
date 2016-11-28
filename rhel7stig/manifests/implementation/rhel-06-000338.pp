############################################################
# Class: rhel7stig::implementation::rhel-07-000338
#
# Description:
#       This class will configure 'server_args=-s /var/libtftpboot'
#	in /etc/xinetd.d/tftp
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

class rhel7stig::implementation::rhel-07-000338 {
	augeas {
	       "Configure TFTP Options":
		       context =>      "/files/etc/xinetd.d",
		       lens    =>      "xinetd.lns",
		       incl    =>      "/etc/xinetd.d/tftp",
		       changes =>      [
			       "set tftp/service[.='tftp']/disable yes",
			       "set tftp/service[.='tftp']/server_args/value[1] -s",
			       "set tftp/service[.='tftp']/server_args/value[2] /var/lib/tftpboot",
		       ],
	}
}
