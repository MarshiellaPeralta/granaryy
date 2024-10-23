import 'package:flutter/foundation.dart';

class UserState with ChangeNotifier {
  int? _userId;  // This corresponds to `acc_id`
  String? _username;  // This corresponds to `username`

  static const String API_HOST = "http://grannary.cnlabworks.io"; // Adjust if needed

  int? get userId => _userId;
  String? get username => _username;

  void setUserId(int userId) {
    _userId = userId;
    notifyListeners();
  }

  void setUserName(String username) {
    _username = username;
    notifyListeners();
  }

  void logout() {
    _userId = null;
    _username = null;
    notifyListeners();
  }
}
