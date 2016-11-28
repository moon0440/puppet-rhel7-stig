############################################################
# Class: rhel7stig::implementation::rhel-07-010210
#
# Description:
#	This class ensures that all non-system, login accounts
#	have a minimum password lifetime of (1) day.
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

class rhel7stig::implementation::rhel-07-010210 {
   include Class['rhel7stig::implementation::users_init']

   $ulist=split($::login_accounts,',')
   update_user_pmina { $ulist: }
}

define update_user_pmina {
   User <| name == "$name" |> {
      password_min_age  => 1,
   }
}
