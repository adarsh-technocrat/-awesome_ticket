#ifndef FLUTTER_PLUGIN_AWESOME_TICKET_PLUGIN_H_
#define FLUTTER_PLUGIN_AWESOME_TICKET_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace awesome_ticket {

class AwesomeTicketPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  AwesomeTicketPlugin();

  virtual ~AwesomeTicketPlugin();

  // Disallow copy and assign.
  AwesomeTicketPlugin(const AwesomeTicketPlugin&) = delete;
  AwesomeTicketPlugin& operator=(const AwesomeTicketPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace awesome_ticket

#endif  // FLUTTER_PLUGIN_AWESOME_TICKET_PLUGIN_H_
