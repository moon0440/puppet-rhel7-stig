############################################################
# Class: rhel7stig::implementation::rhel-07-010381
#
# Description:
#  This class will ensure that no user can execute SUDO
#	commands without authenticating (!authenticate)
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

class rhel7stig::implementation::rhel-07-010381 {
   $SLIST=split("$::sudoers_files",",")
   mod_sudoers { $SLIST: }
}

define mod_sudoers {
   augeas {
      "Remove !authenticate entries from ${name}":
         context  => "/files${name}",
         incl     => "${name}",
         lens     => "sudoers.lns",
         changes  => "rm /files/etc/sudoers/Defaults[*]/authenticate[negate]/negate";
   }
}
