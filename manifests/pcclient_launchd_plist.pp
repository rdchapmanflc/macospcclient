# macospcclient::pcclient_launchd_plist
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
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
