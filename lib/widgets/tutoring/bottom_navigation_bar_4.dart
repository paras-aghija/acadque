import 'package:acadque_student/screens/tutoring/tabs/appointment_screen.dart';
import 'package:acadque_student/screens/tutoring/tabs/stats_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../screens/tutoring/tabs/home_screen.dart';
import '../../screens/tutoring/tabs/profile_screen.dart';

class BottomNavBar4 extends StatelessWidget {
  final String isActive;
  final dynamic onTabChanged;

  const BottomNavBar4(
      {Key? key, required this.isActive, required this.onTabChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 68,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                isActive != 'home'
                    ? onTabChanged('home')
                    : print('Already on Home');
              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SvgPicture.asset(
                  'assets/svg/home.svg',
                  color: isActive == 'home'
                      ? Color(0xFF59AEFD)
                      : Color(0xFFA6A6A6),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                isActive != 'stats'
                    ? onTabChanged('stats')
                    : print('Already on Stats');
              },
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SvgPicture.asset(
                    'assets/svg/search_icon.svg',
                    color: isActive == 'stats'
                        ? Color(0xFF59AEFD)
                        : Color(0xFFA6A6A6),
                  )),
            ),
            InkWell(
              onTap: () {
                isActive != 'appoint'
                    ? onTabChanged('appoint')
                    : print('Already on Appoint');
              },
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SvgPicture.asset(
                    'assets/svg/appointment_icon.svg',
                    color: isActive == 'appoint'
                        ? Color(0xFF59AEFD)
                        : Color(0xFFA6A6A6),
                  )),
            ),
            InkWell(
              onTap: () {
                isActive != 'profile'
                    ? onTabChanged('profile')
                    : print('Already on Profile');
              },
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SvgPicture.asset(
                    'assets/svg/person.svg',
                    color: isActive == 'profile'
                        ? Color(0xFF59AEFD)
                        : Color(0xFFA6A6A6),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
