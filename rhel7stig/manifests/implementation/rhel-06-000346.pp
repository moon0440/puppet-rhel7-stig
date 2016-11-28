############################################################
# Class: rhel7stig::implementation::rhel-07-000346
#
# Description:
#       This class will set the umask for system daemons
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

class rhel7stig::implementation::rhel-07-000346 {
	exec {
                "Configure umask for daemons":
                        command =>      "/bin/sed -i -r 's|^umask[ \t]*[0-9]+|umask 022|g' /etc/init.d/functions",
                        onlyif  =>      "/usr/bin/test `/bin/egrep -i 'umask[[:space:]]*[0-9]+' /etc/init.d/functions | /bin/egrep -iv 'umask[[:space:]]*022' | /usr/bin/wc -l` -ne 0"
	}
}
