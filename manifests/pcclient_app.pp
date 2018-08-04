# macospcclient::pcclient_app
#
# This class ensures the PCClient.app exists
# The App is obtained from a DMG on the puppet server
#
# @summary A short summary of the purpose of this class
#
# @example
#   include macospcclient::pcclient_app
class macospcclient::pcclient_app {
  #get PCClient DMG from Puppet server
  #Build DMG on macOS, chmod -R 0755 DMG contents (PCClient.app)
  file { '/tmp/PCClient.dmg':
    ensure => 'file',
    mode   => '0644',
    source => 'puppet:///modules/macospcclient/PCClient.dmg'
} # Install App from DMG
-> package { 'PCClient.dmg':
    ensure   => 'installed',
    provider => 'appdmg',
    source   => '/tmp/PCClient.dmg'
  }
}
