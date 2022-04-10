import 'dart:convert';

StudentQuestion studentQuestionFromJson(String str) =>
    StudentQuestion.fromJson(json.decode(str));

String studentQuestionToJson(StudentQuestion data) =>
    json.encode(data.toJson());

class StudentQuestion {
  StudentQuestion({
    required this.id,
    required this.studentId,
    required this.subjectId,
    required this.question,
    required this.solved,
    required this.createdAt,
  });

  final String id;
  final String studentId;
  final String subjectId;
  final String question;
  final bool solved;
  final DateTime createdAt;

  factory StudentQuestion.fromJson(Map<String, dynamic> json) =>
      StudentQuestion(
        id: json["_id"],
        studentId: json["studentId"],
        subjectId: json["subjectId"],
        question: json["question"],
        solved: json["solved"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "studentId": studentId,
        "subjectId": subjectId,
        "question": question,
        "solved": solved,
        "createdAt": createdAt.toIso8601String(),
      };
}
