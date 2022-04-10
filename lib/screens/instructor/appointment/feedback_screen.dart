// ignore_for_file: prefer_const_constructors,  prefer_const_literals_to_create_immutables

import 'package:acadque_student/screens/welcomepage/welcome_screen.dart';
import 'package:acadque_student/utilities/color_constant.dart';
import 'package:acadque_student/utilities/hex_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset('assets/svg/arrow_back.svg')),
                  const Text(
                    'Ask Question',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                  Text('')
                ],
              ),
            ),
            height: 166,
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
            height: 660,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'How was your experience in this session?',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'We\'d love to hear from you.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Roboto'),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/svg/unsatisfied_icon.svg',
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/svg/neutral_icon.svg',
                        height: 70,
                        width: 70,
                      ),
                      SvgPicture.asset(
                        'assets/svg/satisfied_icon.svg',
                        height: 40,
                        width: 40,
                      ),
                      SvgPicture.asset(
                        'assets/svg/verysatisfied_icon.svg',
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  Text(
                    'Leave us a review',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: hexStringToColor('F9F9F9'),
                        borderRadius: BorderRadius.circular(20)),
                    height: 138,
                    width: 327,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 18),
                      child: TextField(
                        decoration:
                            InputDecoration.collapsed(hintText: 'Type Here...'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 86,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                    },
                    child: Container(
                      child: const Center(
                        child: Text(
                          'Post',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                      width: 327,
                      height: 48,
                      decoration: BoxDecoration(
                        color: colorPrimary,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
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
