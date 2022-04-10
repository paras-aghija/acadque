import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/top.png',
                fit: BoxFit.cover,
              ),
              width: size.width,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/down.png',
                fit: BoxFit.cover,
              ),
              width: size.width,
            ),
            Center(
              child: Container(
                child: Image.asset('assets/images/logo.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
