import 'dart:math';
import 'package:flutter/material.dart';
import 'package:exercie_app/services/leaderboard_service.dart';

class LeadersList extends StatelessWidget {
/*  final LeaderboardService leaderboardService;*/
  const LeadersList({super.key});

  

  @override
  Widget build(BuildContext context) {
    final leaderboardService = LeaderboardService();
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: leaderboardService.loadLeaderboard(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Return a loading indicator or widget here if needed
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: const Center(
              child: CircularProgressIndicator(
                color: Colors.cyan,
              ),
            ),
          );
        } else if (snapshot.hasError) {
          // Handle error here
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          final usersData = snapshot.data!;

          return ListView.builder(
            shrinkWrap: true,
            itemCount: usersData.length,
            itemBuilder: (context, index) {
              final user = usersData[index];
              final rank = index + 1;
             
              return Column(
                children: <Widget>[
                  ListTile(
                    leading: Text(rank.toString()),
                    title: Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/profile_pic.png'),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(user['name'] as String,
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                            Text('${user['steps']}',
                                style: const TextStyle(fontSize: 12, color: Colors.white24)),
                          ],
                        ),
                      ],
                    ),
                    trailing: Text(
                      rank > 0 ? rank.toString() : '',
                     
                    ),
                  ),
                  const Divider(
                    color: Colors.white24,
                    thickness: 1.0,
                    height: 0.0,
                  ),
                ],
              );
            },
          );
        } else {
          return const Center(
            child: Text('No data found'),
          );
        }
      },
    );
  }
}

