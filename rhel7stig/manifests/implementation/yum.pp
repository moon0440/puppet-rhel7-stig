############################################################
# Class: rhel6stig::implementation::yum
#
# Description:
#       Sets up yum repositories for workstations and servers
#
# Variables:
#       None
#
# Facts:
#       None
#
# Files:
#       /etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
#
# Templates:
#       None
#
# Dependencies:
#       None
############################################################

class rhel6stig::implementation::yum {
	Yumrepo { require => File["rhel-pki"] }

	yumrepo {
		"latest":
			descr          => "Latest RHEL 6 patches downloaded from RHN",
                        enabled        => 1,
                        baseurl        => "$rhel6stig::repourl",
                        gpgcheck       => 1,
                        gpgkey         => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release";
        }

	file {
                "/etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release":
                        owner  => root,
                        group  => root,
                        mode   => 644,
                        alias  => "rhel-pki";
	}
}
