############################################################
# Class: rhel7stig::implementation::rhel-07-000249
#
# Description:
#       This class will ensure that postfix listens only on
#	localhost unless this is a mailserver
#
# Variables:
#       $rhel7stig::mailserver
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
#       Package postfix
###########################################################

class rhel7stig::implementation::rhel-07-000249 {
        if !$rhel7stig::mailserver {
                augeas {
                        "Disable Postfix Network Listening":
                                context => "/files/etc/postfix/main.cf",
                                changes => "set inet_interfaces localhost",
                }
        }
}
