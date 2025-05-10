import 'package:flutter/material.dart';
import 'package:dt_material/dt_material.dart';

class DisponibilityListWidget extends StatelessWidget {
  final List<Map<String, dynamic>> availability;

  const DisponibilityListWidget({
    super.key,
    required this.availability,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> scheduleList = availability.map((entry) {
      String day = entry['day'] as String;
      TimeOfDay start = entry['start'] as TimeOfDay;
      TimeOfDay end = entry['end'] as TimeOfDay;

      return ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$day: ",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${start.toFormattedString()} a ${end.toFormattedString()}",
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
        leading: const Icon(Icons.calendar_today, color: Colors.blue),
      );
    }).toList();

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 0,
            ),
            child: Text(
              "Horarios de atención",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ...scheduleList,
        ],
      ),
    );
  }
}
