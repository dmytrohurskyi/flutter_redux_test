import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/generated/l10n.dart';

class LocationInfoWidget extends StatefulWidget {
  final String location;
  final String date;
  final String time;

  const LocationInfoWidget(
      {Key? key,
      required this.location,
      required this.date,
      required this.time})
      : super(key: key);

  @override
  _LocationInfoWidgetState createState() => _LocationInfoWidgetState();
}

class _LocationInfoWidgetState extends State<LocationInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
      child: Column(
        children: [
          Text(
            widget.location,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            S.of(context).updatedAt(widget.date, widget.time),
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[300],
            ),
          )
        ],
      ),
    );
  }
}
