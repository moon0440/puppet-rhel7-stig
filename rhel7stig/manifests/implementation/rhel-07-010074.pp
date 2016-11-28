############################################################
# Class: rhel7stig::implementation::rhel-07-010074
#
# Description:
# This class sets the screen lock timeout delay
# via the GNOME graphical user interface. Configured
# in the /etc/dconf/db/local.d/ directory
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
#       Package['screen']
############################################################

class rhel7stig::implementation::rhel-07-010074 {
   # ENSURE DEPENDENCY ON: Package['screen']
}
