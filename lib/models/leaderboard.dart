import 'dart:convert';

class Leaderboard {
  String? img;
  String name;
  int steps;

  Leaderboard({
    this.img,
    required this.name,
    required this.steps,
  });

  factory Leaderboard.fromJson(String str) => Leaderboard.fromMap(json.decode(str));

  String toRawJson() => json.encode(toMap());

  factory Leaderboard.fromMap(Map<String, dynamic> json) => Leaderboard(
    img: json["img"],
    name: json["name"],
    steps: json["steps"],
  );

  Map<String, dynamic> toMap() => {
    "img": img,
    "name": name,
    "steps": steps,
  };
}