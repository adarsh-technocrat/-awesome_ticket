import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'awesome_ticket_platform_interface.dart';

/// An implementation of [AwesomeTicketPlatform] that uses method channels.
class MethodChannelAwesomeTicket extends AwesomeTicketPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('awesome_ticket');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
