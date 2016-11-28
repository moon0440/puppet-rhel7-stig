############################################################
# Class: rhel7stig::implementation::rhel-07-000272
#
# Description:
#       This class will ensure that 'client signing' is set
#	do 'mandatory' in /etc/samba/smb.conf
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

class rhel7stig::implementation::rhel-07-000272 {
	augeas {
		"Enforce Client Signing":
                        context => "/files/etc/samba/smb.conf/target[.='global']",
                        lens    => "samba.lns",
                        incl    => "/etc/samba/smb.conf",
                        changes => [ "set 'client signing' mandatory" ];
	}
}
