import 'package:flutter/material.dart';

class LeadersCard extends StatelessWidget {
  const LeadersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(255, 0, 0, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            UserMedal(
              imageUrl: 'images/gym.jpg',
              name: 'Christina Voila',
              score: 2753,
              leaderScore: 2,
            ),
            const SizedBox(width: 30),
            UserMedal(
              imageUrl: 'images/gym.jpg',
              name: 'Lucy Heaton',
              score: 3214,
              leaderScore: 1,
            ),
            const SizedBox(width: 30),
            UserMedal(
              imageUrl: 'images/gym.jpg',
              name: 'Andrea Romero',
              score: 2513,
              leaderScore: 3,
            ),
          ],
        )
        ),
    );
  }
}


class UserMedal extends StatelessWidget {
  final String? imageUrl;
  final String name;
  final int score;
  final int leaderScore;

  UserMedal({
     this.imageUrl,
    required this.name,
    required this.score,
    required this.leaderScore,
  });

  @override
  Widget build(BuildContext context) {
    Color circleColor;

    if (leaderScore == 1) {
      circleColor = Colors.yellow;
    } else if (leaderScore == 2) {
      circleColor = Colors.grey;
    } else if (leaderScore == 3) {
      circleColor = Colors.brown;
    } else {
      circleColor = Colors.transparent; // Default color for other leader scores
    }

    double imageSize = leaderScore == 1 ? 110 : 90; // Adjust image size based on leader score

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4), // Adjust shadow color and opacity
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, 3), // Adjust shadow offset
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: imageSize,
                height: imageSize,
                child: ClipOval(
                  child: Image.asset(
                    imageUrl!, // Use the provided image URL
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (circleColor != Colors.transparent)
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: circleColor,
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Center(
                      child: Text(
                        leaderScore.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8.0), // Adjust spacing as needed
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Change text color if needed
          ),
        ),
        Text(
          '$score', // Display the provided score
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white24, // Change text color if needed
          ),
        ),
      ],
    );
  }
}



