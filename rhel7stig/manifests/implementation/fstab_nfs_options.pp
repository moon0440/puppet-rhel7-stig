############################################################
# Class: rhel6stig::implementation::fstab_nfs_options
#
# Description:
#       Provide utility for adding NFS options to an unknown
#	number of NFS mounts in /etc/fstab
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

define rhel6stig::implementation::fstab_nfs_options ( $nfsopt, $fstab ) {
	augeas {
		"Set ${nfsopt} in ${fstab}":
			context => "/files${fstab}",
			lens    => "fstab.lns",
			incl    => "${fstab}",
			changes => [
				template("rhel6stig/fstab_augeas.erb"),
			],
			onlyif  => "match *[vfstype='nfs'][count(opt[.=\"${nfsopt}\"])=0] size>0",
	}
}
