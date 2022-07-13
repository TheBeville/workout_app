import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<String> items = [
    'profile',
    'calendar',
    'session',
    'history',
    'create',
  ];

  void bottomNavBarSelect(index) {
    // TODO: change to context.go when more views added/settings accessible
    context.push('/${items[index]}');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.man),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Session',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.trending_up),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Create',
        ),
      ],
      currentIndex: 2,
      showUnselectedLabels: true,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.white,
      onTap: bottomNavBarSelect,
    );
  }
}
