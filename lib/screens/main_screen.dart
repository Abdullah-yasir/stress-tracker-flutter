import 'package:flutter/material.dart';
import 'package:testproject/screens/add_user_screen.dart';
import 'package:testproject/screens/profile_screen.dart';
import 'package:testproject/screens/stress_status.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeIndex = 0;

  Widget getActivePage() {
    switch (activeIndex) {
      case 0:
        return const StressStatusScreen();
      case 1:
        return const AddUserScreen();
      case 2:
        return const ProfileScreen();
      default:
        return const StressStatusScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      body: getActivePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_alt_1),
            label: 'Add User',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: activeIndex,
        selectedItemColor: Colors.blueGrey,
        onTap: (int index) {
          activeIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
