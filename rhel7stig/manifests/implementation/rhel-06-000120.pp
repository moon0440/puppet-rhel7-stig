############################################################
# Class: rhel7stig::implementation::rhel-07-000120
#
# Description:
#	This class the default policy for the IPTables INPUT
#	chain to DROP
#
# Variables:
#	None
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

class rhel7stig::implementation::rhel-07-000120 {
	augeas {
		"Default IPTables Input Policy to DROP":
			context => "/files/etc/sysconfig/iptables",
                        lens    => "iptables.lns",
                        incl    => "/etc/sysconfig/iptables",
                        changes => "set table[.='filter']/chain[.='INPUT']/policy 'DROP'";
	}	
}
