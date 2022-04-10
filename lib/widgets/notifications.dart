import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  final String name;
  final String time;
  final String desc;

  const NotificationWidget(
      {Key? key, required this.name, required this.time, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 83,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: name == 'Admin'
                      ? Color(0xFFE6DCFF)
                      : name == 'Tutor'
                          ? Color(0xFFFFD4DC)
                          : Color(0xFFCEDCEB)),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'),
                      ),
                      SizedBox(width: 10),
                      Text(
                        time,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Roboto',
                            color: Color(0xFFA1A1A1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: Text(desc,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Roboto',
                              color: Color(0xFF373737),
                              height: 1.5)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
