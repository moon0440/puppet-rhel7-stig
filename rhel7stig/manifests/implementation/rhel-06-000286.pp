############################################################
# Class: rhel7stig::implementation::rhel-07-000286
#
# Description:
#       This class will configure logging of the Ctrl-Alt-Del
#	key sequence and disable system shutdown
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

class rhel7stig::implementation::rhel-07-000286 {
	$CADSTRING='exec /usr/bin/logger -p security.info \"Ctrl-Alt-Del Pressed\"'

        exec { "Set Ctrl-Alt-Del Action":
                command =>      "/bin/sed -i\"\" -e \"s+^exec+#exec+g\" /etc/init/control-alt-delete.conf;echo \"$CADSTRING\" >> /etc/init/control-alt-delete.conf",
                unless  =>      "/bin/grep \"$CADSTRING\" /etc/init/control-alt-delete.conf",
        }
}
