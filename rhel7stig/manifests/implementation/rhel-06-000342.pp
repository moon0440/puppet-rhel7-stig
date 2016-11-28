############################################################
# Class: rhel7stig::implementation::rhel-07-000342
#
# Description:
#       This class will set the umask in /etc/bashrc to 077
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

class rhel7stig::implementation::rhel-07-000342 {
	exec {
		"Ensure the Default Bash Umask is Set Correctly":
			command => "/bin/sed -i -r 's/(umask)([ \t]*)[0-9]+/umask 077/gi' /etc/bashrc",
			onlyif  => "/usr/bin/test `/bin/egrep -i 'umask[[:space:]]*[0-9]+' /etc/bashrc | /bin/egrep -iv 'umask[[:space:]]*077' | /usr/bin/wc -l` -ne 0";
	}
}
