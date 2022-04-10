// ignore_for_file: prefer_const_constructors,  prefer_const_literals_to_create_immutables

import 'package:acadque_student/screens/welcomepage/welcome_screen.dart';
import 'package:acadque_student/utilities/color_utils.dart';
import 'package:flutter/material.dart';

class ConfirmationScreen extends StatefulWidget {
  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            height: size * 0.2,
            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: new AssetImage('assets/images/bg_shape.png'),
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
                    'Thank you for uploading the question!',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'The question will soon be answered Mr.A.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'May, 18 Tuesday at 04:00PM - 05:30PM',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 120,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
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
                    color: colorBox,
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
