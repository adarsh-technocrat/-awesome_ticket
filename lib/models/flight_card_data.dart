import 'package:flutter/cupertino.dart';

class FlightCardData {
  final DateTime departureDateTime;
  final DateTime arrivalDateTime;
  final FlightLocationInfo flightLocationInfo;
  final String flightNumber;
  final String airlineName;
  final String? pnrNumber;
  final Widget? icon;

  FlightCardData(
      {required this.departureDateTime,
      required this.arrivalDateTime,
      required this.flightLocationInfo,
      required this.flightNumber,
      required this.airlineName,
      this.pnrNumber,
      this.icon});
}

class FlightLocationInfo {
  final String departureName;
  final String departureCode;
  final String destinationName;
  final String destinationCode;

  FlightLocationInfo(
      {required this.departureName,
      required this.departureCode,
      required this.destinationName,
      required this.destinationCode});
}
