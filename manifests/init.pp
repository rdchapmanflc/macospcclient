# macospcclient
#
# Setup the macOS Papercut client
# 
#
# @summary This sets up the macOS Papercut client
# Pattren is Package (appdmg) for PCClient.app
# File com.papercut.client.plist for launchd
# Service (launchd) for com.papercut.client.agent
#
# @example
#   include macospcclient
class macospcclient {
  include macospcclient::pcclient_app
  include macospcclient::pcclient_launchd_plist
  include macospcclient::pcclient_launchd_service
}
