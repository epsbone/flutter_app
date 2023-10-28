import 'package:exercie_app/presentation/widgets/profile_user_card.dart';
import 'package:exercie_app/presentation/widgets/profile_user_graphs.dart';
import 'package:exercie_app/presentation/widgets/profile_user_image.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    // container color black with the profile white text on in
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 70, 70, 70),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileUserImage(),
            SizedBox(height: 50),
            ProfileUserCard(),
            SizedBox(height: 50),
            ProfileUserGraphs()
          ],
        ),
      ),
    );
  }
}