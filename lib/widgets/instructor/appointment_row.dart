import 'package:flutter/material.dart';

class AppointmentRowWidget extends StatelessWidget {
  final String title;
  final String value;

  const AppointmentRowWidget(
      {Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title + ':',
          style: TextStyle(
              fontFamily: 'Rubik',
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color.fromARGB(255, 131, 130, 130)),
        ),
        SizedBox(
          width: 40,
        ),
        Text(
          value,
          style: TextStyle(
              fontFamily: 'Rubik',
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(0xFF1E253A)),
        ),
      ],
    );
  }
}
