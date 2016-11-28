############################################################
# Class: rhel7stig::implementation::rhel-07-000165
#
# Description:
#	This class deploys the audit.rules.$architecture
#	file which addresses the following findings:
#	rhel-07-000165
#	rhel-07-000167
#	rhel-07-000169
#	rhel-07-000171
#	rhel-07-000173
#	rhel-07-000174
#	rhel-07-000175
#	rhel-07-000176
#	rhel-07-000177
#	rhel-07-000182
#	rhel-07-000183
#	rhel-07-000184
#	rhel-07-000185
#	rhel-07-000186
#	rhel-07-000187
#	rhel-07-000188
#	rhel-07-000189
#	rhel-07-000190
#	rhel-07-000191
#	rhel-07-000192
#	rhel-07-000193
#	rhel-07-000194
#	rhel-07-000195
#	rhel-07-000196
#	rhel-07-000197
#	rhel-07-000199
#	rhel-07-000200
#	rhel-07-000201
#	rhel-07-000202
#
#
# Variables:
#	None
#
# Facts:
#       $architecture
#
# Files:
#       audit.rules.$architecture
#
# Templates:
#       None
#
# Dependencies:
#       None
############################################################

class rhel7stig::implementation::rhel-07-000165 {
	file {
                "/etc/audit/audit.rules":
                        owner  => root,
                        group  => root,
                        mode   => 640,
                        notify => Service["auditd"],
                        source => "puppet:///modules/rhel7stig/audit.rules.$architecture";
	}	
}
