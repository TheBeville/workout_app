import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  int selectedIndex;

  BottomNavBar({Key? key, required this.selectedIndex}) : super(key: key);

  List<String> items = [
    'profile',
    'calendar',
    'session',
    'progress',
    'create',
  ];

  @override
  Widget build(BuildContext context) {
    void bottomNavBarSelect(int index) {
      context.go('/${items[index]}');
      // setState(() {
      selectedIndex = index;
      // });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
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
          label: 'Progress',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Create',
        ),
      ],
      currentIndex: selectedIndex,
      showUnselectedLabels: true,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.white,
      onTap: bottomNavBarSelect,
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
