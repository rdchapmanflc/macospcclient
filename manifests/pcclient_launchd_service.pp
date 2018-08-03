# macospcclient::pcclient_launchd_service
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include macospcclient::pcclient_launchd_service
class macospcclient::pcclient_launchd_service {
    require macospcclient::pcclient_launchd_plist
    service { 'com.papercut.client.agent':
      ensure => 'running',
      enable => true,
  }
}
