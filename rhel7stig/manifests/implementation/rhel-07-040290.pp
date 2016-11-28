############################################################
# Class: rhel7stig::implementation::rhel-07-040290
#
# Description:
#	This class prevent IPv4 source routed packets on all
#	interfaces
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

class rhel7stig::implementation::rhel-07-040290 {
	package { 'firewalld':
		ensure => latest,
		require => Class["rhel7stig::implementation::yum"];
	}	
	service { 'firewalld':
		ensure => running,
		enable => true,
		require   => Package["firewalld"],
	}	
}
