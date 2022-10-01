import 'package:intl/intl.dart';

class DateTimeHelper {
  /// [ Gety Time in AM and and PM ]

  static String getTimeWithAmPm(DateTime dateTime) {
    DateTime tempDate = DateFormat.Hms()
        .parse("${dateTime.hour.toString()}:${dateTime.minute.toString()}:0:0");
    var dateFormat = DateFormat("h:mm a");
    return dateFormat.format(tempDate).toString();
  }

  /// [ Date Formate from String ]

  static String formateDateFromString(String dateTime, String formatePattern) {
    var dtInLocal = DateTime.parse(dateTime);
    var format = DateFormat(formatePattern);
    return format.format(dtInLocal);
  }
}
