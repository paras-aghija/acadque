// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:acadque_student/screens/doubt_solving/ask/new_question.dart';
import 'package:acadque_student/screens/notification/notification_screen.dart';
import 'package:acadque_student/widgets/bottom_navigation_bar.dart';
import 'package:acadque_student/widgets/doubt_solving/divider.dart';
import 'package:acadque_student/widgets/doubt_solving/tutor_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 45),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome Alisha',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Roboto'),
                      ),
                      const Text(
                        'Thursday, 9th Sep 20',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationScreen()));
                    },
                    child: SizedBox(
                      height: 24.92,
                      width: 22,
                      child:
                          SvgPicture.asset('assets/svg/notification_icon.svg'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 67,
            ),
            Container(
              height: 221,
              width: 327,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Need any help',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Ask any question from experts\nand clear out your doubt Now!',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewQuestion()));
                      },
                      child: Container(
                        child: const Center(
                          child: Text(
                            'Ask Now',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                        width: 121,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: new AssetImage("assets/images/placeholder.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Top Tutors',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                TutorProfile(),
                DividerLine(),
                TutorProfile(),
                DividerLine(),
                TutorProfile()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
