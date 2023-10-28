import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LeaderboardService extends ChangeNotifier {
  final String _baseUrl = 'fitness-8f7ba-default-rtdb.firebaseio.com';
  final List<Map<String, dynamic>> leaderboard = [];

  bool isLoading = true;

  LeaderboardService() {
    this.loadLeaderboard();
  }

  Future<List<Map<String, dynamic>>> loadLeaderboard() async {
    this.isLoading = true;
    notifyListeners();

    final url = Uri.https(_baseUrl, 'Users.json');

    final resp = await http.get(url);

    if (resp.statusCode == 200) {
      final Map<String, dynamic> leaderboardMap = json.decode(resp.body);

      this.isLoading = false;
      notifyListeners();

      // Clear the existing data
      this.leaderboard.clear();

      leaderboardMap.forEach((key, value) {
        final playerData = value as Map<String, dynamic>;
        final entry = {
          'img': playerData['img'] ?? '', // Set a default value for 'img'
          'name': playerData['name'],
          'steps': playerData['steps'],
        };
        this.leaderboard.add(entry);
      });

      /*print(this.leaderboard);*/
      return this.leaderboard;
    } else {
      throw Exception('Failed to load leaderboard');
    }
  }
}