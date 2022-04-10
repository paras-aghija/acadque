// ignore_for_file: prefer_const_constructors,  prefer_const_literals_to_create_immutables

import 'package:acadque_student/API/models/student_questions_model.dart';
import 'package:acadque_student/API/providers/db_providers.dart';
import 'package:acadque_student/screens/doubt_solving/ask/new_question.dart';
import 'package:acadque_student/utilities/color_constant.dart';
import 'package:acadque_student/utilities/color_utils.dart';
import 'package:acadque_student/widgets/tutoring/ask_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AskScreen extends ConsumerWidget {
  const AskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionState = ref.watch(fetchStudentQuestionsProvider);
    final size = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: colorPrimary,
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Your Questions',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                ],
              ),
            ),
            height: size * 0.2,
            decoration: BoxDecoration(
                color: Color(0xFF59AEFD),
                image: DecorationImage(
                    image: AssetImage('assets/images/bg_shape.png'),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Container(
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
              height: size * 0.8 - 68,
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: questionState.when(
                      data: (questionsList) {
                        if (questionsList == null || questionsList.isEmpty) {
                          return Center(child: Text("No questions found"));
                        } else {
                          return ListView.builder(
                              itemCount: questionsList.length,
                              itemBuilder: (context, index) {
                                return AskContainer(
                                    isSolved: questionsList[index].solved,
                                    // question: 'ques',
                                    question: questionsList[index]
                                        .question
                                        .toString(),
                                    desc:
                                        "Test Description because no description in  response.");
                              });
                        }
                      },
                      error: (_, error) =>
                          Center(child: Text(error.toString())),
                      loading: () =>
                          Center(child: CircularProgressIndicator()))),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => NewQuestion()));
          },
          backgroundColor: colorBox,
          child: const Icon(Icons.add)),
    );
  }
}
