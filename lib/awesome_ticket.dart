
import 'awesome_ticket_platform_interface.dart';

class AwesomeTicket {
  Future<String?> getPlatformVersion() {
    return AwesomeTicketPlatform.instance.getPlatformVersion();
  }
}
