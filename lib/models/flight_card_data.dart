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

  @override
  String toString() {
    return 'FlightCardData(departureDateTime: $departureDateTime, arrivalDateTime: $arrivalDateTime, flightLocationInfo: $flightLocationInfo, flightNumber: $flightNumber, airlineName: $airlineName, pnrNumber: $pnrNumber, icon: $icon)';
  }
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

  @override
  String toString() {
    return 'FlightLocationInfo(departureName: $departureName, departureCode: $departureCode, destinationName: $destinationName, destinationCode: $destinationCode)';
  }
}
