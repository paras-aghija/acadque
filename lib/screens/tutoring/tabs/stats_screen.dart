// ignore_for_file: prefer_const_constructors,  prefer_const_literals_to_create_immutables

import 'package:acadque_student/screens/instructor/appointment/book_appointment.dart';
import 'package:acadque_student/screens/instructor/appointment/instructor_profile.dart';
import 'package:acadque_student/screens/tutoring/tutoring.dart';
import 'package:acadque_student/utilities/color_constant.dart';
import 'package:acadque_student/widgets/divider.dart';
import 'package:acadque_student/widgets/tutoring/bottom_navigation_bar_4.dart';
import 'package:acadque_student/widgets/tutoring/tutoring_tutor_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Container(
      color: colorPrimary,
      child: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset('assets/svg/arrow_back.svg'),
                      )),
                  const Text(
                    'Statistics',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.search,
                      color: colorPrimary,
                    ),
                  ),
                ],
              ),
            ),
            height: size * 0.2,
            decoration: BoxDecoration(
                color: Color(0xFF59AEFD),
                image: DecorationImage(
                    image: new AssetImage('assets/images/bg_shape.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero)),
            height: size * 0.8 - 68,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstructorProfileScreen()));
                    },
                    child: TutoringTutorWidget(
                        name: 'Kanishth',
                        desc:
                            'CSE Undergrad Student from SRM Institute of Science and Technology Institute of Science and Technology',
                        price: 25),
                  ),
                  DividerLine(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstructorProfileScreen()));
                    },
                    child: TutoringTutorWidget(
                        name: 'Kanishth',
                        desc:
                            'CSE Undergrad Student from SRM Institute of Science and Technology Institute of Science and Technology',
                        price: 25),
                  ),
                  DividerLine(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstructorProfileScreen()));
                    },
                    child: TutoringTutorWidget(
                        name: 'Kanishth',
                        desc:
                            'CSE Undergrad Student from SRM Institute of Science and Technology Institute of Science and Technology',
                        price: 25),
                  ),
                  DividerLine(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstructorProfileScreen()));
                    },
                    child: TutoringTutorWidget(
                        name: 'Kanishth',
                        desc:
                            'CSE Undergrad Student from SRM Institute of Science and Technology Institute of Science and Technology',
                        price: 25),
                  ),
                  DividerLine(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstructorProfileScreen()));
                    },
                    child: TutoringTutorWidget(
                        name: 'Kanishth',
                        desc:
                            'CSE Undergrad Student from SRM Institute of Science and Technology Institute of Science and Technology',
                        price: 25),
                  ),
                  DividerLine(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InstructorProfileScreen()));
                    },
                    child: TutoringTutorWidget(
                        name: 'Kanishth',
                        desc:
                            'CSE Undergrad Student from SRM Institute of Science and Technology Institute of Science and Technology',
                        price: 25),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
