//  ignore_for_file: prefer_const_constructors,  prefer_const_literals_to_create_immutables

import 'package:acadque_student/screens/instructor/appointment/comfirmation_successful.dart';
import 'package:acadque_student/widgets/instructor/appointment_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utilities/color_constant.dart';

class AppointmentConfirmationScreen extends StatefulWidget {
  @override
  _AppointmentConfirmationScreenState createState() =>
      _AppointmentConfirmationScreenState();
}

class _AppointmentConfirmationScreenState
    extends State<AppointmentConfirmationScreen> {
  String? value;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: colorPrimary,
      body: Stack(
        children: [
          ListView(
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
                          child: SvgPicture.asset('assets/svg/back.svg')),
                      const Text(
                        'Confirm Appointment',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.white),
                      ),
                      Image.asset('assets/images/phone.png'),
                    ],
                  ),
                ),
                height: height * 0.2,
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
                height: height * 0.8,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          Text(
                            'Dr. Joff Yu',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Qualification',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          height: 207,
                          width: 327,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppointmentRowWidget(
                                    title: 'Tutor', value: 'Mary R. Burns'),
                                AppointmentRowWidget(
                                    title: 'Topic', value: 'Topic Here'),
                                AppointmentRowWidget(
                                    title: 'Date', value: 'May, Tuesday 18'),
                                AppointmentRowWidget(
                                    title: 'Time', value: '04:00PM - 05:30PM'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFFA1A1A1)),
                            ),
                            Text(
                              '\$25,00',
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color(0xFF1E253A)),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SuccessScreen(
                                      name: 'Muskan',
                                      date: '2 march',
                                      time: '12:00PM')));
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              'Pay and Book',
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
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 140,
            left: size / 2 - 54,
            child: Container(
              width: 120,
              height: 120,
              child: Transform.scale(
                scale: 1,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF373737)),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 220,
              left: size / 2 - 8,
              child: SvgPicture.asset('assets/svg/verified.svg')),
        ],
      ),
    );
  }
}
