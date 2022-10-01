import 'package:awesome_ticket/models/flight_card_data.dart';
import 'package:flutter/cupertino.dart';

class FlightAwesomeTicketCard extends StatefulWidget {
  final FlightCardData flightCardData;

  const FlightAwesomeTicketCard({Key? key, required this.flightCardData})
      : super(key: key);

  @override
  State<FlightAwesomeTicketCard> createState() =>
      _FlightAwesomeTicketCardState();
}

class _FlightAwesomeTicketCardState extends State<FlightAwesomeTicketCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.flightCardData.onTap,
      child: Container(),
    );
  }
}
