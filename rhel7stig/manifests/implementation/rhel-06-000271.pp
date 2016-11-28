############################################################
# Class: rhel7stig::implementation::rhel-07-000271
#
# Description:
#       This class will add the noexec option to removable
#	media mounts
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

class rhel7stig::implementation::rhel-07-000271 {
	$dfile="/etc/fstab"
	$dopt="noexec"
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
}
