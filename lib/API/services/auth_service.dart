import 'dart:developer';

import 'package:acadque_student/API/endpoints.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class AuthService {
  Future<Map<String, dynamic>?> registerStudent(Map data) async {
    log('send');
    var url = Uri.parse(getUserDetails('students'));
    final sendData = convert.jsonEncode(data);
    var response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: sendData);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      print('@@@$jsonResponse');
      return jsonResponse["data"]["student"];
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }

  Future<Map<String, dynamic>?> loginStudent(Map data) async {
    log('send');
    var url = Uri.parse(getUserDetails('auth/login?user=student'));
    final sendData = convert.jsonEncode(data);
    var response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: sendData);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      print('@@@$jsonResponse');
      return jsonResponse;
    } else {
      print('Request failed with status: ${response.body}.');
      return null;
    }
  }
}
