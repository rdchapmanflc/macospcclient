# macospcclient::pcclient_app
#
# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include macospcclient::pcclient_app
class macospcclient::pcclient_app {

  file { '/tmp/PCClient.dmg':
    ensure => 'file',
    mode   => '0644',
    source => 'puppet:///modules/macospcclient/PCClient.dmg'
}
-> package { 'PCClient.dmg':
    ensure   => 'installed',
    provider => 'appdmg',
    source   => '/tmp/PCClient.dmg'
  }
}
