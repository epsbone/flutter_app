import 'package:flutter/material.dart';

class ProfileUserImage extends StatelessWidget {
  const ProfileUserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/gym.jpg'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ Color.fromRGBO(35,37,36,0.6), Color.fromRGBO(35,37,36,1) ],
            stops: [0.1, 1.0]
          ),
        ),
        child: const Column(
          children: [
            _Avatar(),
            SizedBox(height: 25),
            _AvatarStats(),
          ]
        ),
      ),
    );
  }
}

// circle avatar user image
class _Avatar extends StatelessWidget {
  const _Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/gym.jpg'),
          ),
        ),
        const SizedBox(height: 5),
        const Text('Lucy Heaton',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(height: 2),
        const Text('Intermediate Athlete',
          style: TextStyle(
            color: Colors.white24,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class _AvatarStats extends StatelessWidget {
  const _AvatarStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _StatItem(
          title: 'Ranking',
          value: '1',
        ),
        _StatItem(
          title: 'Points',
          value: '3 214',
        ),
        _StatItem(
          title: 'Goal streaks',
          value: '24',
        ),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({super.key, required this.title, required this.value });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            if (title == 'Ranking')
              const Icon(Icons.approval, color: Colors.yellow, size: 20),
            const SizedBox(width: 5),
            Text(value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ]
        ),
        const SizedBox(height: 2),
        Text(title,
          style: const TextStyle(
            color: Colors.white24,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}