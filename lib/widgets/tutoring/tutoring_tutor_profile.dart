// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:acadque_student/utilities/color_constant.dart';
import 'package:acadque_student/utilities/color_utils.dart';
import 'package:flutter/material.dart';

class TutoringTutorWidget extends StatelessWidget {
  final String name;
  final String desc;
  final int price;

  const TutoringTutorWidget(
      {Key? key, required this.name, required this.desc, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: colorBox, borderRadius: BorderRadius.circular(8)),
            height: 72,
            width: 84,
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 227,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$' + price.toString() + '/hr',
                        style: TextStyle(
                            color: colorPrimary,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Color(0xFFFBB344),
                    ),
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Color(0xFFFBB344),
                    ),
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Color(0xFFFBB344),
                    ),
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Color(0xFFFBB344),
                    ),
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Color(0xFFFBB344),
                    ),
                  ],
                ),
                Container(
                  width: 227,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          desc,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
