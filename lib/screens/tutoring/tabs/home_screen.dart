// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:acadque_student/screens/notification/notification_screen.dart';
import 'package:acadque_student/widgets/doubt_solving/divider.dart';
import 'package:acadque_student/widgets/doubt_solving/tutor_profile.dart';
import 'package:acadque_student/widgets/tutoring/bottom_navigation_bar_4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TutorHomeScreen extends StatefulWidget {
  @override
  _TutorHomeScreenState createState() => _TutorHomeScreenState();
}

class _TutorHomeScreenState extends State<TutorHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 25),
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
                    child: SvgPicture.asset('assets/svg/notification_icon.svg'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 52,
              width: 327,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFFA1A1A1),
                    ),
                    hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFA1A1A1),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                    hintText: 'Filter for specific subject(e.g. Statistics)'),
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
    );
  }
}
