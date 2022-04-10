// To parse this JSON data, do
//
//     final student = studentFromJson(jsonString);

import 'dart:convert';

StudentLogin studentFromJson(String str) =>
    StudentLogin.fromJson(json.decode(str));

String studentToJson(StudentLogin data) => json.encode(data.toJson());

class StudentLogin {
  StudentLogin({
    required this.status,
    required this.data,
  });

  final String status;
  final String data;

  factory StudentLogin.fromJson(Map<String, dynamic> json) => StudentLogin(
        status: json["status"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data,
      };
}
