import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 36, 36, 36)
                .withOpacity(0.2), // Shadow color
            blurRadius: 15.0, // Blur radius
            spreadRadius: 15.0, // Spread radius
            offset: Offset(0, 2), // Shadow offset (x, y)
          ),
        ]),
        child: BottomNavigationBar(
            selectedItemColor: Color(0xff000000),
            unselectedItemColor: Color(0xff000000),
            selectedLabelStyle: TextStyle(fontFamily: 'PoppinBold'),
            unselectedLabelStyle: TextStyle(fontFamily: 'Poppin'),
            iconSize: 20,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.amber,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Setting"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: "Notifications"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ]));
  }
}
