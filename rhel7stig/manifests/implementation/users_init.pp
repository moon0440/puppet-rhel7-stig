############################################################
# Class: rhel7stig::implementation::users_init
#
# Description:
#	This class initiates user resources with existing
#  non-system user accounts to be modified by other
#  manifests/classes
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
#
############################################################

class rhel7stig::implementation::users_init {
   $ulist=split($::login_accounts,',')
   initialize_users { $ulist: }
}

define initialize_users {
   user { "$name":
      name  => "$name",
   }
}
