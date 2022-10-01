import 'package:awesome_ticket/awesome_ticket.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late FlightCardData flightData;

  @override
  void initState() {
    flightData = FlightCardData(
      airlineName: "Indigo",
      flightLocationInfo: FlightLocationInfo(
          departureCode: "ods",
          departureName: "Odessa",
          destinationCode: "msq",
          destinationName: "Minsk"),
      arrivalDateTime: DateTime.now(),
      departureDateTime: DateTime.now().add(const Duration(hours: 2)),
      flightNumber: "B2834",
      icon: const Icon(Icons.flight),
      pnrNumber: "123456",
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Awesome Ticket'),
          ),
          body: Column(
            children: [
              AwesomeFlightTicketCard(flightCardData: flightData, onTap: () {}),
            ],
          )),
    );
  }
}
