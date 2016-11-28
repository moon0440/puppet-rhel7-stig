############################################################
# Class: rhel7stig::implementation::rhel-07-000343
#
# Description:
#       This class will set the umask in /etc/csh.cshrc to 077
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

class rhel7stig::implementation::rhel-07-000343 {
	exec {
		"Ensure the Default C Shell Umask is Set Correctly":
			command => "/bin/sed -i -r 's/(umask)([ \t]*)[0-9]+/umask 077/gi' /etc/csh.cshrc",
			onlyif  => "/usr/bin/test `/bin/egrep -i 'umask[[:space:]]*[0-9]+' /etc/csh.cshrc | /bin/egrep -iv 'umask[[:space:]]*077' | /usr/bin/wc -l` -ne 0";
	}
}
