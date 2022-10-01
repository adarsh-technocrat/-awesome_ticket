import 'package:awesome_ticket/models/flight_card_data.dart';
import 'package:awesome_ticket/utils/date_time_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AwesomeFlightTicketCard extends StatefulWidget {
  final FlightCardData flightCardData;
  final Function()? onTap;
  final Decoration? decoration;

  const AwesomeFlightTicketCard(
      {super.key, required this.flightCardData, this.onTap, this.decoration});

  @override
  State<AwesomeFlightTicketCard> createState() =>
      _AwesomeFlightTicketCardState();
}

class _AwesomeFlightTicketCardState extends State<AwesomeFlightTicketCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: widget.decoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffA2C9C2),
              ),
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, bottom: 10),
                child: Row(
                  children: [
                    widget.flightCardData.icon ??
                        const Icon(Icons.flight_takeoff_rounded),
                    const SizedBox(width: 8),
                    Text(
                      widget.flightCardData.flightNumber,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    const Spacer(),
                    Text(
                      widget.flightCardData.airlineName,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 22),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.flightCardData.flightLocationInfo.departureCode
                              .toUpperCase(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                        Text(
                          widget
                              .flightCardData.flightLocationInfo.departureName,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget
                              .flightCardData.flightLocationInfo.destinationCode
                              .toUpperCase(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                        Text(
                          widget.flightCardData.flightLocationInfo
                              .destinationName,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 22),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateTimeHelper.getTimeWithAmPm(
                              widget.flightCardData.departureDateTime),
                          style: const TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          DateTimeHelper.formateDateFromString(
                              widget.flightCardData.departureDateTime
                                  .toString(),
                              'E dd MMM'),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          DateTimeHelper.getTimeWithAmPm(
                              widget.flightCardData.arrivalDateTime),
                          style: const TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 18),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          DateTimeHelper.formateDateFromString(
                              widget.flightCardData.arrivalDateTime.toString(),
                              'E dd MMM'),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
