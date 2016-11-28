############################################################
# Class: rhel7stig::implementation::rhel-07-000269
#
# Description:
#       This class will add the nodev option to NFS mounts
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
#       rhel7stig::implementation::fstab_nfs_options
############################################################

class rhel7stig::implementation::rhel-07-000269 {
	$dfile="/etc/fstab"
	$dopt="nodev"
	augeas {
		"Add ${dopt} Option to /tmp":
			context => "/files${dfile}",
			lens	=> "fstab.lns",
			incl	=> "${dfile}",
			changes => [
				"ins opt after *[file='/tmp']/opt[last()]",
				"set *[file='/tmp']/opt[last()] ${dopt}",
			],
			onlyif  => "match *[file='/tmp']/opt[.=\"${dopt}\"] size == 0";
		"Add ${dopt} Option to /dev/shm":
			context => "/files${dfile}",
			lens	=> "fstab.lns",
			incl	=> "${dfile}",
			changes => [
				"ins opt after *[file='/dev/shm']/opt[last()]",
				"set *[file='/dev/shm']/opt[last()] ${dopt}",
			],
			onlyif  => "match *[file='/dev/shm']/opt[.=\"${dopt}\"] size == 0";
	}

	rhel7stig::implementation::fstab_nfs_options { "Add ${dopt} option to NFS mounts":
		fstab	=>	"${dfile}",
		nfsopt	=>	"${dopt}",
	}
}
