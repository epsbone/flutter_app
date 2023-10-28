import 'dart:convert';

class User {
  int calories;
  int kilometers;
  int points;
  int steps;

  User({
    required this.calories,
    required this.kilometers,
    required this.points,
    required this.steps,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
    calories: json["calories"],
    kilometers: json["kilometers"],
    points: json["points"],
    steps: json["steps"],
  );

  Map<String, dynamic> toMap() => {
    "calories": calories,
    "kilometers": kilometers,
    "points": points,
    "steps": steps,
  };
}