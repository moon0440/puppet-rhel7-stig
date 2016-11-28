############################################################
# Class: rhel7stig::implementation::rhel-07-010380
#
# Description:
#  This class will ensure that no user can execute SUDO
#	commands without authenticating (NOPASSWD)
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

class rhel7stig::implementation::rhel-07-010380 {
   $SLIST=split("$::sudoers_files",",")
   mod_sudoers { $SLIST: }
}

define mod_sudoers {
   augeas {
      "Remove NOPASSWD entries from ${name}":
         context  => "/files${name}",
         incl     => "${name}",
         lens     => "sudoers.lns",
         changes  => "set spec[*]/host_group/command[tag='NOPASSWD']/tag PASSWD";
   }
}
