// ignore_for_file: prefer_const_constructors,  prefer_const_literals_to_create_immutables

import 'package:acadque_student/screens/doubt_solving/doubt.dart';
import 'package:acadque_student/screens/tutoring/tutoring.dart';
import 'package:acadque_student/utilities/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends ConsumerState<WelcomeScreen> {
  @override
  void initState() {
    //ref.read(tokenProvider.state).state =
    //  SharedPrefsService().getToken() as String?;
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: colorPrimary,
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 105,
                      ),
                      const Text(
                        'LOGO',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'Explore And Learn',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            height: size * 0.35,
            decoration: BoxDecoration(
                color: Color(0xFF59AEFD),
                image: DecorationImage(
                    image: new AssetImage('assets/images/background.png'),
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
            height: size * 0.65,
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 37, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DoubtScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF979797),
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          height: 155,
                          width: 155,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SvgPicture.asset('assets/svg/question.svg'),
                              Container(
                                height: 80,
                                width: 80,
                                child:
                                    Image.asset('assets/images/question.png'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Doubt Solving',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TutoringScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF979797),
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          height: 155,
                          width: 155,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SvgPicture.asset('assets/svg/question.svg'),
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset('assets/images/man.png'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Tutoring',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
