############################################################
# Class: rhel7stig::implementation::rhel-07-010280
#
# Description:
#  This class will ensure that accounts are locked 
#	immediately upon password expiration.
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

class rhel7stig::implementation::rhel-07-010280 {
	augeas {
		"Set Account Expiration Following Inactivity - Insert":
			context => "/files/etc/default/useradd",
			lens => "shellvars.lns",
			incl => "/etc/default/useradd",
			changes	=>	["ins INACTIVE after #comment[.=~regexp(\"INACTIVE.*\")]",
					"set INACTIVE 0"],
			onlyif 	=>	"match #comment[.=~regexp(\"INACTIVE.*\")] size!=0";
	} -> augeas {
		"Set Account Expiration Following Inactivity - Add or Modify":
			context => "/files/etc/default/useradd",
			lens => "shellvars.lns",
			incl => "/etc/default/useradd",
			changes => "set INACTIVE 0";
	}
}
