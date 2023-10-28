import 'package:exercie_app/presentation/widgets/dropdown_sessions.dart';
import 'package:exercie_app/presentation/widgets/leaders_card.dart';
import 'package:exercie_app/presentation/widgets/leaders_list.dart';
import 'package:exercie_app/services/leaderboard_service.dart';
import 'package:flutter/material.dart';

class LeaderboardView extends StatelessWidget {
  const LeaderboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromARGB(255, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DropdownSessions(),
          const LeadersCard(),
          Expanded(
            child: ListView(
              children: [
                LeadersList(),
              ],
            ),
          ),
        ]
      )
    );
  }
}