import 'package:acadque_student/API/models/student_questions_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/database_service.dart';

final dbProvider = Provider((_) => DBService());

final fetchStudentQuestionsProvider =
    FutureProvider<List<StudentQuestion>?>((ref) {
  return ref.read(dbProvider).fetchStudentQuestions();
});
