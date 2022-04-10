// ignore_for_file: prefer_const_constructors,  prefer_const_literals_to_create_immutables

import 'package:acadque_student/API/models/student_model.dart';
import 'package:acadque_student/API/services/auth_service.dart';
import 'package:acadque_student/screens/login/login_screen.dart';
import 'package:acadque_student/screens/welcomepage/welcome_screen.dart';

import 'package:acadque_student/utilities/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
            width: double.infinity,
            height: size.height,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/login.png'),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 70.0),
                          child: Center(
                              child: Text(
                            "Register",
                            style: TextStyle(
                                color: Color(0xFF373737),
                                fontFamily: 'Roboto',
                                fontSize: 32,
                                fontWeight: FontWeight.w700),
                          )),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Stack(
                          children: [
                            Image.asset('assets/images/upload.png'),
                            Positioned(
                              child: Text(
                                'Upload\nPhoto',
                                style: TextStyle(color: Colors.white),
                              ),
                              top: 35,
                              left: 30,
                            ),
                            Positioned(
                              child: SvgPicture.asset(
                                'assets/svg/upload.svg',
                              ),
                              top: 10,
                              right: 0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 60, left: 30, right: 30, bottom: 20),
                    child: TextFormField(
                        controller: usernameController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Enter Username';
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "Username",
                          hintText: '',
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                          labelStyle: TextStyle(
                              color: Color(0xFFA1A1A1),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    child: TextFormField(
                        controller: emailController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Enter email';
                          }
                        },
                        decoration: InputDecoration(
                            labelText: "Email",
                            hintText: '',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold),
                            labelStyle: TextStyle(
                                color: Color(0xFFA1A1A1),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    child: TextFormField(
                        controller: passwordController,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return 'Enter password';
                          }
                        },
                        decoration: InputDecoration(
                            labelText: "Create Password",
                            hintText: '',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold),
                            labelStyle: TextStyle(
                                color: Color(0xFFA1A1A1),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        final Map data = {
                          "name": usernameController.text,
                          "email": emailController.text,
                          "password": passwordController.text
                        };
                        final response =
                            await AuthService().registerStudent(data);
                        if (response != null) {
                          final model = Student.fromJson(response);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        }
                      }
                    },
                    child: Container(
                      height: 48,
                      width: 327,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: colorPrimary,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: Center(
                          child: Text(
                            'CREATE ACCOUNT',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "or Sign Up With",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 48,
                          width: 126,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFF3F3F3),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                'assets/svg/google.svg',
                                height: 24.8,
                                width: 24.2,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: Center(
                                  child: Text(
                                    'Google',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 48,
                          width: 126,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFF3F3F3),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset(
                                'assets/svg/facebook.svg',
                                height: 24.8,
                                width: 24.2,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: Center(
                                  child: Text(
                                    'Facebook',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already a User?",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF919191)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));
                        },
                        child: SizedBox(
                          height: 48,
                          width: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF1F5567),
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
