############################################################
# Class: rhel7stig::implementation::rhel-07-040740
#
# Description:
#       When an NFS server is configured to use AUTH_SYS, a 
# selected userid and groupid are used to handle requests from 
# the remote user. The userid and groupid could mistakenly or 
# maliciously be set incorrectly. The AUTH_GSS method of 
# authentication uses certificates on the server and client 
# systems to more securely authenticate the remote mount request.
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
#      None 
############################################################

class rhel7stig::implementation::rhel-07-040740 {
	$dfile="/etc/fstab"
	augeas {
                "Set AUTH_GSS to nfs mounts":
			lens	=> "fstab.lns",
			incl	=> "/etc/fstab",
                        changes => [ "setm /files/etc/fstab *[vfstype='nfs4']/opt[.='sec']/value krb5:krb5i:krb5p" ],
	}

}
