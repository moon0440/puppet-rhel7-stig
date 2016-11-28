############################################################
# Class: rhel7stig::implementation::rhel-07-000319
#
# Description:
#       This class will limit the system to 10 simultaneous
#	logins
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

class rhel7stig::implementation::rhel-07-000319 {
	augeas {
		"Limit the systemt to 10 simultaneous logins":
			context => "/files/etc/security/limits.conf",
			changes => [
				"rm domain[.='*'][./type='hard' and ./item='maxlogins']",
				"set domain[last()+1] '*'",
				"set domain[last()]/type 'hard'",
				"set domain[last()]/item 'maxlogins'",
				"set domain[last()]/value '10'",
			],
			onlyif	=>	"match domain[.='*'][./type='hard' and ./item='maxlogins']/value[.='10'] size==0";
	}
}
