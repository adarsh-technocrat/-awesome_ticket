import 'package:flutter_test/flutter_test.dart';
import 'package:awesome_ticket/awesome_ticket.dart';
import 'package:awesome_ticket/awesome_ticket_platform_interface.dart';
import 'package:awesome_ticket/awesome_ticket_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAwesomeTicketPlatform 
    with MockPlatformInterfaceMixin
    implements AwesomeTicketPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AwesomeTicketPlatform initialPlatform = AwesomeTicketPlatform.instance;

  test('$MethodChannelAwesomeTicket is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAwesomeTicket>());
  });

  test('getPlatformVersion', () async {
    AwesomeTicket awesomeTicketPlugin = AwesomeTicket();
    MockAwesomeTicketPlatform fakePlatform = MockAwesomeTicketPlatform();
    AwesomeTicketPlatform.instance = fakePlatform;
  
    expect(await awesomeTicketPlugin.getPlatformVersion(), '42');
  });
}
