import 'package:flutter/cupertino.dart';

class FlightCardData {
  final Function()? onTap;
  final DateTime departureDateTime;
  final DateTime arrivalDateTime;
  final Map<String, String> boardingLocationInfo;
  final Map<String, String> destinationLocationInfo;
  final String flightNumber;
  final String airlineName;
  final String? pnrNumber;
  final Widget? icon;

  FlightCardData(
      {this.onTap,
      required this.departureDateTime,
      required this.arrivalDateTime,
      required this.boardingLocationInfo,
      required this.destinationLocationInfo,
      required this.flightNumber,
      required this.airlineName,
      this.pnrNumber,
      this.icon});
}
