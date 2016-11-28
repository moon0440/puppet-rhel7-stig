class { "common_resources":
   sssd_package_ensure  => "installed",
   stigd_pam   => true,
}

include rhel7stig::implementation::rhel-07-010260
