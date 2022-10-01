import 'package:awesome_ticket/models/flight_card_data.dart';
import 'package:flutter/cupertino.dart';

class AwesomeFlightTicketCard extends StatefulWidget {
  final FlightCardData flightCardData;
  final Function()? onTap;

  const AwesomeFlightTicketCard(
      {super.key, required this.flightCardData, this.onTap});

  @override
  State<AwesomeFlightTicketCard> createState() =>
      _AwesomeFlightTicketCardState();
}

class _AwesomeFlightTicketCardState extends State<AwesomeFlightTicketCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(),
    );
  }
}
