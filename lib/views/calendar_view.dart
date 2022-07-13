import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({Key? key}) : super(key: key);

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Calendar',
        ),
      ),
      body: const Center(child: Text('Calendar')),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 1,
      ),
    );
  }
}
