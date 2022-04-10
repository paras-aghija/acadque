import 'package:acadque_student/models/slide.dart';
import 'package:acadque_student/screens/login/login_screen.dart';
import 'package:acadque_student/utilities/color_constant.dart';
import 'package:acadque_student/widgets/slide_item.dart';
import 'package:flutter/material.dart';

import '../../widgets/slide_dots.dart';

class WalkthroughScreen extends StatefulWidget {
  @override
  _WalkthroughScreenState createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: slideList.length,
                  itemBuilder: (ctx, i) => SlideItem(i),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 35),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                for (int i = 0; i < slideList.length; i++)
                                  if (i == _currentPage)
                                    SlideDots(true)
                                  else
                                    SlideDots(false)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Container(
                          height: 48,
                          width: 98.36,
                          decoration: BoxDecoration(
                            color: colorPrimary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.zero,
                            ),
                          ),
                          child: Center(
                            child: Text('NEXT'),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
