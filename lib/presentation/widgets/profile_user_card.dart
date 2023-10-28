import 'package:flutter/material.dart';

class ProfileUserCard extends StatelessWidget {
  const ProfileUserCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 70, 70, 70),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 20), // Add your desired padding here
              child: _CardImage(),
            ),
            SizedBox(width: 30),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 20, 20), // Add your desired padding here
              child: _CardInfo(),
            ),
          ],
        ),
      ),
    );
  }
}


class _CardImage extends StatelessWidget {
  const _CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black // Shadow color and opacity
                ),
              ],
            ),
           
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 15),
              SizedBox(width: 5),
              Icon(Icons.star, color: Colors.yellow, size: 15),
              SizedBox(width: 5),
              Icon(Icons.star, color: Colors.yellow, size: 15),
              SizedBox(width: 5),
              Icon(Icons.star, color: Colors.yellow, size: 15),
              SizedBox(width: 5),
              Icon(Icons.star_half, color: Colors.yellow, size: 15),
            ],
          ),
        ],
      ),
    );
  }
}

class _CardInfo extends StatelessWidget {
  const _CardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sarah Stratford',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
            SizedBox(height: 2),
            Text(
              'Personal Coach',
              style: TextStyle(
                color: Colors.white24,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '241',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Students',
                  style: TextStyle(
                    color: Colors.white24,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '24',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  'Champions',
                  style: TextStyle(
                    color: Colors.white24,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
