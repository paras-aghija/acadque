// ignore_for_file: prefer_const_constructors,  prefer_const_literals_to_create_immutables

import 'package:acadque_student/screens/instructor/appointment/feedback_screen.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String name;
  final String date;
  final String time;

  const SuccessScreen(
      {Key? key, required this.name, required this.date, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            height: 247,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: new AssetImage('assets/images/top.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            height: 250,
            child: Image.asset('assets/images/icon.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Thank you for booking payment!',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'You booked a session with $name',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '$date at $time',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FeedbackScreen()));
                },
                child: Container(
                  child: const Center(
                    child: Text(
                      'Done',
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
                    color: Color(0xFF59AEFD),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
