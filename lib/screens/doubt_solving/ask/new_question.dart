// ignore_for_file: prefer_const_constructors,  prefer_const_literals_to_create_immutables

import 'package:acadque_student/screens/doubt_solving/ask/confirmation_screen.dart';
import 'package:acadque_student/utilities/color_constant.dart';
import 'package:acadque_student/utilities/color_utils.dart';
import 'package:acadque_student/utilities/hex_to_string.dart';
import 'package:acadque_student/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewQuestion extends StatefulWidget {
  @override
  _NewQuestionState createState() => _NewQuestionState();
}

class _NewQuestionState extends State<NewQuestion> {
  final items = ['JEE', 'UPSC', 'NEET', 'NET', 'SSC', 'HSC', 'Others'];
  String? value;

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset('assets/svg/arrow_back.svg')),
                  const Text(
                    'Ask Question',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                  Text('')
                ],
              ),
            ),
            height: size * 0.2,
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
            height: size * 0.8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ListView(
                children: [
                  Text(
                    'Select Category',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: 327,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: hexStringToColor('F9F9F9'),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: hexStringToColor('F9F9F9'))),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: value,
                        iconSize: 40,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: colorBox,
                        ),
                        items: items.map(buildMenuItem).toList(),
                        onChanged: (value) =>
                            setState(() => this.value = value),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Your Question',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: hexStringToColor('F9F9F9'),
                        borderRadius: BorderRadius.circular(20)),
                    height: 138,
                    width: 327,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 18),
                      child: TextField(
                        decoration:
                            InputDecoration.collapsed(hintText: 'Type Here...'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SvgPicture.asset(
                              'assets/svg/plus_icon.svg',
                            ),
                          ),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: colorBox,
                              borderRadius:
                                  BorderRadiusDirectional.circular(50)),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Upload Picture',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmationScreen()));
                    },
                    child: Container(
                      child: const Center(
                        child: Text(
                          'Post',
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
            ),
          )
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
