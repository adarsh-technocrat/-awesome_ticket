import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'awesome_ticket_method_channel.dart';

abstract class AwesomeTicketPlatform extends PlatformInterface {
  /// Constructs a AwesomeTicketPlatform.
  AwesomeTicketPlatform() : super(token: _token);

  static final Object _token = Object();

  static AwesomeTicketPlatform _instance = MethodChannelAwesomeTicket();

  /// The default instance of [AwesomeTicketPlatform] to use.
  ///
  /// Defaults to [MethodChannelAwesomeTicket].
  static AwesomeTicketPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AwesomeTicketPlatform] when
  /// they register themselves.
  static set instance(AwesomeTicketPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
