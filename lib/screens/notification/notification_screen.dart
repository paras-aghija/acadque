import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/divider.dart';
import '../../widgets/notifications.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset('assets/svg/backbtn.svg'),
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(
                        color: Color(0xFF373737),
                        fontFamily: 'Roboto',
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            height: 247,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: new AssetImage('assets/images/login.png'),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: ListView(
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFA1A1A1)),
                  ),
                  NotificationWidget(
                      name: 'Admin',
                      time: '2h 47m ago',
                      desc:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
                  DividerLine(),
                  NotificationWidget(
                      name: 'Tutor',
                      time: '2h 47m ago',
                      desc:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
                  DividerLine(),
                  NotificationWidget(
                      name: 'Tutor',
                      time: '2h 47m ago',
                      desc:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
                  DividerLine(),
                  NotificationWidget(
                      name: 'Lillian Ellis',
                      time: '2h 47m ago',
                      desc:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Yesterday',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFFA1A1A1)),
                  ),
                  NotificationWidget(
                      name: 'Admin',
                      time: '2h 47m ago',
                      desc:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
                  DividerLine(),
                  NotificationWidget(
                      name: 'Admin',
                      time: '2h 47m ago',
                      desc:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
                  DividerLine(),
                  NotificationWidget(
                      name: 'Tutor',
                      time: '2h 47m ago',
                      desc:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
