//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <awesome_ticket/awesome_ticket_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) awesome_ticket_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "AwesomeTicketPlugin");
  awesome_ticket_plugin_register_with_registrar(awesome_ticket_registrar);
}
