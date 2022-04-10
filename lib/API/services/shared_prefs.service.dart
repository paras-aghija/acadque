import 'package:acadque_student/utilities/string_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(kSharedPrefsToken);
    //!If null, Create a workspace
    if (token == null) {
      return null;
    } else {
      if (token.endsWith('null')) {
        return null;
      }
      return token;
    }
  }

  Future<void> setToken({required String? token}) async {
    final prefs = await SharedPreferences.getInstance();
    if (token == null) {
      await prefs.setString(kSharedPrefsToken, 'null');
    } else {
      await prefs.setString(kSharedPrefsToken, token);
    }
  }
}
