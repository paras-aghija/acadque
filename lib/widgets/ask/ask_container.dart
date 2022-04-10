import 'package:acadque_student/screens/doubt_solving/ask/question_screen.dart';
import 'package:flutter/material.dart';

class AskContainer extends StatelessWidget {
  final bool isSolved;
  final String question;
  final String desc;

  const AskContainer({
    Key? key,
    required this.isSolved,
    required this.question,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 22, right: 22, top: 15, bottom: 15),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          QuestionScreen(question: question, answer: desc)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 103,
                  width: 114,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(''),
                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFF59AEFD),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                child: Text(
                                    isSolved == true ? 'Solved' : 'Pending'),
                              ))),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF33354E),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        question,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        desc,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Roboto',
                            color: Color(0xFFA1A1A1)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}
