# macospcclient::pcclient_launchd_service
#
# This class ensures the Papercut launchd service is running
#
# @summary Ensure that com.papercut.client.agent is running for system
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
