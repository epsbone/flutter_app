import 'package:flutter/material.dart';
class DropdownSessions extends StatefulWidget {
  const DropdownSessions({Key? key}) : super(key: key);

  @override
  _DropdownSessionsState createState() => _DropdownSessionsState();
}

class _DropdownSessionsState extends State<DropdownSessions> {
  List<String> workoutSeasons = ['Workout Season 1', 'Workout Season 2', 'Workout Season 3'];

  String selectedSeason = 'Workout Season 1';
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            toggleMenu();
          },
          child: Container(
            width: double.infinity,
            color: const Color.fromRGBO(46, 48, 50, 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedSeason,
                    style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: const Color.fromRGBO(46, 48, 50, 1),
          height: isMenuOpen ? workoutSeasons.length * 50.0 : 0,
          child: ListView.builder(
            itemCount: workoutSeasons.length,
            itemBuilder: (context, index) {
              final season = workoutSeasons[index];
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedSeason = season;
                    isMenuOpen = false;
                  });
                },
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          season,
                          style: TextStyle(
                            color: selectedSeason == season ? Colors.white : Colors.white24, // White for selected, red for others
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }
}
