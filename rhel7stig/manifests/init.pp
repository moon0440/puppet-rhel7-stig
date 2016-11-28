# == Class: rhel7stig
#
# Full description of class rhel7stig here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { rhel7stig:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class rhel7stig (
	$server = false,
	$dnsserver = false,
	$ftpserver = false,
	$webserver = false,
	$gitserver = false,
	$krbserver = false,
	$ldapserver = false,
	$mailserver = false,
	$nfsbackupserver = false,
	$nfsserver = false,
	$puppetserver = false,
	$syslogserver = false,
	$isrouter = false,
	$needsx	= false,
	$yumcanary = false,
	$gateway,
	# Generate a password hash with 'grub-mkpasswd-pbkdf2'
	$grubpass,
   $grubcfg = "/boot/grub2/grub.cfg",
	$dnsservers = "",
	$tftpused = false,
	$vsftpused = false,
	$auditdir = "/var/log/audit",
	$ipv6 = false,
	$syslogserver_ip = "", ) {


	# Ensure that the provided GRUB password is SHA512 hashed
	validate_re($grubpass,'^grub\.pbkdf2\.sha512','The $grubpass value must be PBKDF hashed.')

	class { "rhel6stig::implementation::yum": }
	finding { "rhel-06-000005": }
	finding { "rhel-06-000009": }
	finding { "rhel-06-000013": }
	finding { "rhel-06-000015": }
	finding { "rhel-06-000016": }
	finding { "rhel-06-000027": }
	finding { "rhel-06-000028": }
	finding { "rhel-07-010260": }
	finding { "rhel-06-000032": }
	finding { "rhel-06-000033":
                findinglist => [
                        "rhel-06-000034",
                        "rhel-06-000035",
                ]
	}
	finding { "rhel-06-000036":
                findinglist => [
                        "rhel-06-000037",
                        "rhel-06-000038",
                ]
        }
	finding { "rhel-06-000039":
                findinglist => [
                        "rhel-06-000040",
                        "rhel-06-000041",
                ]
        }
	finding { "rhel-06-000042":
		findinglist => [
			"rhel-06-000043",
			"rhel-06-000044",
		]
	}
	finding { "rhel-06-000045":
		findinglist => [
                        "rhel-06-000046",
		]
	}
	finding { "rhel-06-000047":
                findinglist => [
                        "rhel-06-000048",
                ]
        }
	finding { "rhel-06-000050": }
	finding { "rhel-07-010200": }
	finding { "rhel-07-010220": }
	finding { "rhel-07-010230": }
	finding { "rhel-07-010110": }
	finding { "rhel-07-010090": }
	finding { "rhel-07-010120": }
	finding { "rhel-07-010100": }
	finding { "rhel-07-010130": }
	finding { "rhel-07-010140": }
	finding { "rhel-07-010170": }
	finding { "rhel-07-010180": }
	finding { "rhel-07-010190": }
	finding { "rhel-07-010210": }
	finding { "rhel-06-000065":
		findinglist => [
			"rhel-06-000066",
			"rhel-06-000067",
		]
	}
	finding { "rhel-06-000068": }
	finding { "rhel-06-000069": }
	finding { "rhel-06-000070": }
	finding { "rhel-07-010072": }
	finding { "rhel-07-010040": }
	finding { "rhel-06-000078": }
	finding { "rhel-06-000079": }
	finding { "rhel-06-000080": }
	finding { "rhel-06-000081": }
	finding { "rhel-06-000082": }
	finding { "rhel-06-000083": }
	finding { "rhel-06-000084": }
	finding { "rhel-06-000086": }
	finding { "rhel-06-000088": }
	finding { "rhel-06-000089": }
	finding { "rhel-06-000090": }
	finding { "rhel-06-000091": }
	finding { "rhel-06-000092": }
	finding { "rhel-06-000093": }
	finding { "rhel-06-000095": }
	finding { "rhel-06-000096": }
	finding { "rhel-06-000097": }
	finding { "rhel-06-000098": }
	finding { "rhel-06-000099": }
	finding { "rhel-06-000103":
		findinglist => [
                        "rhel-06-000106",
                        "rhel-06-000107",
                ]
	}
	finding { "rhel-06-000116":
                findinglist => [
                        "rhel-06-000117",
                ]
        }
	finding { "rhel-06-000120":
		findinglist => [
			"rhel-06-000320",
		]
	}
	finding { "rhel-06-000124": }
	finding { "rhel-06-000125": }
	finding { "rhel-06-000126": }
	finding { "rhel-06-000127": }
	finding { "rhel-06-000138": }
	finding { "rhel-06-000145": }
	finding { "rhel-06-000148": }
	finding { "rhel-06-000160": }
	finding { "rhel-06-000161": }
	finding { "rhel-06-000165":
		findinglist => [
			"rhel-06-000167",
			"rhel-06-000169",
			"rhel-06-000171",
			"rhel-06-000173",
			"rhel-06-000174",
			"rhel-06-000175",
			"rhel-06-000176",
			"rhel-06-000177",
			"rhel-06-000182",
			"rhel-06-000183",
			"rhel-06-000184",
			"rhel-06-000185",
			"rhel-06-000186",
			"rhel-06-000187",
			"rhel-06-000188",
			"rhel-06-000189",
			"rhel-06-000190",
			"rhel-06-000191",
			"rhel-06-000192",
			"rhel-06-000193",
			"rhel-06-000194",
			"rhel-06-000195",
			"rhel-06-000196",
			"rhel-06-000197",
			"rhel-06-000199",
			"rhel-06-000200",
			"rhel-06-000201",
			"rhel-06-000202",
		]
	}
	finding { "rhel-06-000203": }
	finding { "rhel-06-000204": }
	finding { "rhel-06-000206": }
	finding { "rhel-06-000211": }
	finding { "rhel-06-000213": }
	finding { "rhel-06-000214": }
	finding { "rhel-06-000216": }
	finding { "rhel-06-000218": }
	finding { "rhel-06-000220": }
	finding { "rhel-06-000221": }
	finding { "rhel-06-000222": }
	finding { "rhel-06-000223": }
	finding { "rhel-06-000224": }
	finding { "rhel-06-000227": }
	finding { "rhel-06-000230": }
	finding { "rhel-06-000231": }
	finding { "rhel-06-000234": }
	finding { "rhel-06-000236": }
	finding { "rhel-06-000237": }
	finding { "rhel-07-010270": }
	finding { "rhel-06-000240": }
	finding { "rhel-06-000241": }
	finding { "rhel-06-000243": }
	finding { "rhel-06-000246": }
	finding { "rhel-06-000247": }
	finding { "rhel-06-000249": }
	finding { "rhel-06-000256": }
	finding { "rhel-06-000261": }
	finding { "rhel-06-000262": }
	finding { "rhel-06-000265": }
	finding { "rhel-06-000266": }
	finding { "rhel-06-000267": }
	finding { "rhel-06-000268": }
	finding { "rhel-06-000269": }
	finding { "rhel-06-000270": }
	finding { "rhel-06-000271": }
	finding { "rhel-06-000272": }
	finding { "rhel-07-010240": }
	finding { "rhel-07-010250": }
	finding { "rhel-06-000278": }
	finding { "rhel-06-000279":
		findinglist => [
			"rhel-06-000280",
		]
	}
	finding { "rhel-06-000286": }
	finding { "rhel-06-000287": }
	finding { "rhel-06-000288": }
	finding { "rhel-06-000289": }
	finding { "rhel-06-000290": }
	finding { "rhel-06-000291": }
	finding { "rhel-07-010150": }
	finding { "rhel-07-010160": }
	finding { "rhel-06-000302":
                findinglist => [
                        "rhel-06-000303",
                        "rhel-06-000304",
                        "rhel-06-000305",
                        "rhel-06-000306",
                        "rhel-06-000307",
                ]
	}
	finding { "rhel-06-000308": }
	# rhel-06-000309 only runs if the target is an NFS server, see logic below
	finding { "rhel-06-000311": }
	finding { "rhel-06-000313": }
	finding { "rhel-06-000315": }
	finding { "rhel-06-000319": }
	finding { "rhel-06-000331": }
	finding { "rhel-07-010280":
                findinglist => [
                        "rhel-06-000335",
		]
	}
	# rhel-06-000338 only runs if TFTP is in use, see logic below
	# rhel-06-000339 only runs if VSFTP is in use, see logic below
	finding { "rhel-06-000342": }
	finding { "rhel-06-000343": }
	finding { "rhel-06-000344": }
	finding { "rhel-06-000345": }
	finding { "rhel-06-000346": }
	finding { "rhel-07-010371": }
	finding { "rhel-07-010372": }
	finding { "rhel-07-010373": }
	finding { "rhel-06-000383": 
                findinglist => [
                        "rhel-06-000384",
                        "rhel-06-000385",
                        "rhel-06-000522",
                ]
	}
	finding { "rhel-07-010380": }
	finding { "rhel-07-010400": }
	finding { "rhel-07-010401": }
	finding { "rhel-07-010402": }
	finding { "rhel-07-010420": }
	finding { "rhel-06-000503": }
	finding { "rhel-06-000507": }
	finding { "rhel-06-000509": }
	finding { "rhel-06-000510": }
	finding { "rhel-06-000511": }
	# rhel-06-000515 only runs if the target is an NFS server, see logic below
	finding { "rhel-06-000523": }
	finding { "rhel-06-000525": }
	finding { "rhel-06-000526": }

	if $tftpused {
		finding { "rhel-06-000338": }
	}

	if $vsftpused {
		finding { "rhel-06-000339": }
		finding { "rhel-06-000348": }
	}

	if $nfsserver {
		class { "rhel6stig::implementation::nfs": }
		finding { "rhel-06-000309": }
		finding { "rhel-06-000515": }
	}
	# Blake Start
   finding { "sshd-test": }
	finding { "rhel-07-040290": }
	finding { "rhel-07-040810": }
	finding { "rhel-07-040820": }
   finding { "rhel-07-040350": }
   finding { "rhel-07-040351": }
   finding { "rhel-07-040380": }
   finding { "rhel-07-040410": }
   finding { "rhel-07-040420": }
   finding { "rhel-07-040421": }
   finding { "rhel-07-040730": }
   finding { "rhel-07-040860": }
	finding { "rhel-07-040480": }
	finding { "rhel-07-040490": }
	finding { "rhel-07-040500": }
	finding { "rhel-07-040520": }
	finding { "rhel-07-040540": }
	finding { "rhel-07-040580": }
	finding { "rhel-07-040590": }
	finding { "rhel-07-040620": }
	finding { "rhel-07-040640": }
	finding { "rhel-07-040650": }
	finding { "rhel-07-040660": }
	finding { "rhel-07-040670": }
	finding { "rhel-07-040680": }
	finding { "rhel-07-040690": }
	finding { "rhel-07-040700": }
	finding { "rhel-07-040730": }
	finding { "rhel-07-040740": }
	finding { "rhel-07-040830": }
	finding { "rhel-07-040860": }
}

define finding ( $findinglist=false ) {
	if $findinglist {
		mnotify { $findinglist: }
		<-Mnotify["$name"]
	}
        class { "rhel7stig::implementation::$name": }
	->
	mnotify { $name: }
}

define mnotify {
        notify { "Implemented fix for: $name": }
}
