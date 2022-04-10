import 'package:acadque_student/screens/instructor/appointment/confirmation.dart';
import 'package:acadque_student/utilities/color_constant.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookAppontmentScreen extends StatefulWidget {
  @override
  _BookAppontmentScreenState createState() => _BookAppontmentScreenState();
}

class _BookAppontmentScreenState extends State<BookAppontmentScreen> {
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
                        'Book  Appointment',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.white),
                      ),
                      Image.asset('assets/images/message.png'),
                    ],
                  ),
                ),
                height: height * .2,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        width: 375,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                              height: 7,
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Duration',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 24, 40, 53),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            height: 38,
                            width: 91,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text(
                                '15 Mins',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: colorPrimary),
                            height: 36,
                            width: 91,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text(
                                '30 Mins',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            height: 36,
                            width: 91,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text(
                                '1 Hour',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Select Dates',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 24, 40, 53),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: CalendarTimeline(
                          initialDate: DateTime(2022, 1, 1),
                          firstDate: DateTime(2022, 1, 1),
                          lastDate: DateTime(2022, 12, 31),
                          onDateSelected: (date) => print(date),
                          leftMargin: 10,
                          monthColor: Colors.black,
                          dayColor: Colors.black,
                          activeDayColor: Colors.white,
                          activeBackgroundDayColor: colorPrimary,
                          dotsColor: Colors.black,
                          locale: 'en_ISO',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Times',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 24, 40, 53),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 209, 206, 206)),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              height: 38,
                              width: 162,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  '08:00AM - 09:30AM',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 160, 157, 157),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                )),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 209, 206, 206)),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              height: 38,
                              width: 162,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  '10:00AM - 11:00AM',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 160, 157, 157),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                )),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 209, 206, 206)),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              height: 38,
                              width: 162,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  '2:30PM - 3:30PM',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 209, 206, 206)),
                                  borderRadius: BorderRadius.circular(20),
                                  color: colorPrimary),
                              height: 38,
                              width: 162,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  '4:30PM - 5:30PM',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                )),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 209, 206, 206)),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              height: 38,
                              width: 162,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  '6:00PM - 7:30PM',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 160, 157, 157),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                )),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 209, 206, 206)),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              height: 38,
                              width: 162,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  '8:00PM - 9:30PM',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AppointmentConfirmationScreen()));
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'Next',
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
                      ),
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
