############################################################
# Class: rhel7stig::implementation::rhel-07-000344
#
# Description:
#       This class will set the umask in /etc/profile to 077
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

class rhel7stig::implementation::rhel-07-000344 {
	exec {
		"Replace /etc/profile umask":
			command => "/bin/sed -i -r 's/(umask)([ \t]*)[0-9]+/umask 077/gi' /etc/profile",
			onlyif  => "/usr/bin/test `/bin/egrep -i 'umask[[:space:]]*[0-9]+' /etc/profile | /bin/egrep -iv 'umask[[:space:]]*077' | /usr/bin/wc -l` -ne 0";
	}
}
