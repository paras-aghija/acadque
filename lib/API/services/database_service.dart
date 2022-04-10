import 'dart:developer';

import 'package:acadque_student/API/endpoints.dart';
import 'package:acadque_student/API/models/student_questions_model.dart';
import 'package:acadque_student/API/services/shared_prefs.service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class DBService {
  Future<List<StudentQuestion>?> fetchStudentQuestions() async {
    log('send');
    var url = Uri.parse(
        getUserDetails('students/621f4f585469afb153d71a58/questions'));
    String? token = await SharedPrefsService().getToken();
    var response = await http.get(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "token": token!
      },
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      print('@@@$jsonResponse');
      var listQ = jsonResponse["data"]["questions"] as List;
      log("@1" + listQ.toString());
      List<StudentQuestion> modelList = listQ.map((e) {
        log("@@@@111$e");
        return StudentQuestion.fromJson(e);
      }).toList();
      // var abc = StudentQuestion.fromJson(jsonResponse);
      //return jsonResponse["data"]["questions"];
      log("@2" + modelList.toString());
      return modelList;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }
}
