############################################################
# Class: rhel6stig::implementation::nfs
#
# Description:
#       Ensures that NFS package is installed and service is 
#	started
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

class rhel6stig::implementation::nfs {
	package { "nfs-utils":
		ensure  => installed,
		require => Class["yum"];
	}

	service { "nfs":
		ensure  => true,
		enable  => true,
		require => Package['nfs-utils'],
	}
}
