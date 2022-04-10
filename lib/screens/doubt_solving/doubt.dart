import 'package:acadque_student/screens/doubt_solving/ask/ask_screen.dart';
import 'package:acadque_student/screens/doubt_solving/home_screen.dart';
import 'package:acadque_student/screens/doubt_solving/profile_screen.dart';
import 'package:acadque_student/widgets/bottom_navigation_bar.dart';

import 'package:flutter/material.dart';

class DoubtScreen extends StatefulWidget {
  @override
  DoubtScreenState createState() => DoubtScreenState();
}

class DoubtScreenState extends State<DoubtScreen> {
  String _activeTab = 'home';

  var tabs = {
    "home": HomeScreen(),
    "ask": AskScreen(),
    "profile": ProfileScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          bottomNavigationBar: BottomNavBar(
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
