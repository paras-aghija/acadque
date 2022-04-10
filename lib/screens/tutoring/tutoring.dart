import 'package:acadque_student/screens/tutoring/tabs/appointment_screen.dart';
import 'package:acadque_student/screens/tutoring/tabs/home_screen.dart';
import 'package:acadque_student/screens/tutoring/tabs/profile_screen.dart';
import 'package:acadque_student/screens/tutoring/tabs/stats_screen.dart';
import 'package:acadque_student/widgets/tutoring/bottom_navigation_bar_4.dart';
import 'package:flutter/material.dart';

class TutoringScreen extends StatefulWidget {
  @override
  _TutoringScreenState createState() => _TutoringScreenState();
}

class _TutoringScreenState extends State<TutoringScreen> {
  String _activeTab = 'home';

  var tabs = {
    "home": TutorHomeScreen(),
    "stats": StatsScreen(),
    "appoint": AppointmentScreen(),
    "profile": ProfileScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          bottomNavigationBar: BottomNavBar4(
            isActive: _activeTab,
            onTabChanged: (newTab) => setState(() {
              _activeTab = newTab;
            }),
          ),
          body: tabs[_activeTab],
        ),
        onWillPop: () {
          // Closing this screen when current tab is home
          // otherwise don't close just make tab as home

          if (_activeTab != 'home') {
            setState(() {
              _activeTab = 'home';
            });
            return Future.value(false);
          }
          return Future.value(true);
        });
  }
}
