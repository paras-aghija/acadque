// To parse this JSON data, do
//
//     final student = studentFromJson(jsonString);

import 'dart:convert';

Student studentFromJson(String str) => Student.fromJson(json.decode(str));

String studentToJson(Student data) => json.encode(data.toJson());

class Student {
  Student({
    required this.name,
    required this.role,
    required this.email,
    // this.password,
    required this.disabled,
    // this.createdAt,
    required this.id,
    // this.v,
  });

  final String name;
  final String role;
  final String email;
  // final String password;
  final bool disabled;
  // final DateTime createdAt;
  final String id;
  // final int v;

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        name: json["name"],
        role: json["role"],
        email: json["email"],
        // password: json["password"],
        disabled: json["disabled"],
        // createdAt: DateTime.parse(json["createdAt"]),
        id: json["_id"],
        // v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "role": role,
        "email": email,
        // "password": password,
        "disabled": disabled,
        // "createdAt": createdAt.toIso8601String(),
        "_id": id,
        // "__v": v,
      };
}
