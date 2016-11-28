############################################################
# Class: rhel7stig::implementation::rhel-07-000308
#
# Description:
#       This class will disable core dumps for all users
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
###########################################################

class rhel7stig::implementation::rhel-07-000308 {
	augeas {
		"Disable Core Dumps for All Users":
			context => "/files/etc/security/limits.conf",
			changes => [
				"rm domain[.='*'][./type='hard' and ./item='core']",
				"set domain[last()+1] '*'",
				"set domain[last()]/type 'hard'",
				"set domain[last()]/item 'core'",
				"set domain[last()]/value '0'",
			],
			onlyif	=>	"match domain[.='*'][./type='hard' and ./item='core']/value[.='0'] size==0";
	}
}
