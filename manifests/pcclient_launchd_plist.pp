# macospcclient::pcclient_launchd_plist
#
# This class ensures the launchd plist for Papercut client exists
# souce is module files on Puppet server
#
# @summary This class ensures that com.papercut.client.plist exists
# with correct mode and owner for LaunchD
#
# @example
#   include macospcclient::pcclient_launchd_plist
class macospcclient::pcclient_launchd_plist {
  require macospcclient::pcclient_app
  file { '/Library/LaunchAgents/com.papercut.client.plist':
    ensure => 'file',
    group  =>  'wheel',
    mode   => '0644',
    owner  =>  'root',
    source => 'puppet:///modules/macospcclient/com.papercut.client.plist',
  }
}
