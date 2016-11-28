############################################################
# Class: rhel7stig::implementation::firewall
#
# Description:
#  RHEL-07-040100
#  RHEL-07-040250
#  RHEL-07-040290
#  RHEL-07-040810
#  RHEL-07-040820
#
# Variables:
#	   None
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

class rhel7stig::implementation::firewall {
	package { 'firewalld':
		ensure => installed,
	}	
	service { 'firewalld':
      # RHEL-07-040820
		ensure => running,
		enable => true,
		require   => Package["firewalld"],
	}	
}
