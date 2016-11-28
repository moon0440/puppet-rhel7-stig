############################################################
# Class: rhel7stig::implementation::rhel-07-010230
#
# Description:
#	This class ensures that all non-system, login accounts
#	have a maximum password lifetime of (60) day.
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

class rhel7stig::implementation::rhel-07-010230 {
   include Class['rhel7stig::implementation::users_init']

   $ulist=split($::login_accounts,',')
   update_user_pmaxa { $ulist: }
}

define update_user_pmaxa {
   User <| name == "$name" |> {
      password_max_age  => 60,
   }
}
