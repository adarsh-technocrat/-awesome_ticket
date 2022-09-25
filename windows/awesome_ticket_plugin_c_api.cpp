#include "include/awesome_ticket/awesome_ticket_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "awesome_ticket_plugin.h"

void AwesomeTicketPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  awesome_ticket::AwesomeTicketPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
