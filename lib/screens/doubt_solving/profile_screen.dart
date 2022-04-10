// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:acadque_student/widgets/bottom_navigation_bar.dart';
import 'package:acadque_student/widgets/doubt_solving/divider.dart';
import 'package:acadque_student/widgets/profile/profile_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              child: const Text(
                'Profile',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    fontFamily: 'Roboto'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 115,
              width: 326,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/image_thumbnail.svg',
                        height: 110,
                        width: 110,
                        color: Colors.white,
                      ),
                      Positioned(
                          top: 75,
                          left: 40,
                          child: SvgPicture.asset('assets/svg/camera_icon.svg'))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Surinder Thakur",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 2),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.add,
                                size: 20,
                                color: Color(0xFF0EB9B8),
                              ),
                              const Text(
                                'Get Help Now',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFF33354E),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 284,
              width: 326,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFDBDBDB)),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const ProfileRow(
                      iconPath: 'assets/svg/name_icon.svg',
                      title: 'Name',
                      value: 'Surinder Thakur',
                    ),
                    DividerLine(),
                    const ProfileRow(
                      iconPath: 'assets/svg/email_icon.svg',
                      title: 'E-mail',
                      value: 'surinder@osumstudio.com',
                    ),
                    DividerLine(),
                    const ProfileRow(
                      iconPath: 'assets/svg/password_icon.svg',
                      title: 'Password',
                      value: 'Updated 2 weeks ago',
                    ),
                    DividerLine(),
                    const ProfileRow(
                      iconPath: 'assets/svg/contact_icon.svg',
                      title: 'Contact Number',
                      value: '+91 9878977771',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
