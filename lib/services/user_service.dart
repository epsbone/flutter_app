import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserService extends ChangeNotifier {
  final String _baseUrl = 'fitness-8f7ba-default-rtdb.firebaseio.com';
  Map<String, dynamic>? userData;

  bool isLoading = true;

  userService() {
    loadUser(); // Note: Use loadUser here
  }

  Future<Map<String, dynamic>?> loadUser() async { // Change the return type
    isLoading = true;
    notifyListeners();

    final url = Uri.https(_baseUrl, 'leaderboard.json');

    final resp = await http.get(url);
    /*print(resp.body);*/

    if (resp.statusCode == 200) {
      final Map<String, dynamic> userMap = json.decode(resp.body);

      isLoading = false;
      notifyListeners();

      userData = userMap;

      /*print(this.userData);*/
      return userData;
    } else {
      throw Exception('Failed to load user data');
    }
  }
}
