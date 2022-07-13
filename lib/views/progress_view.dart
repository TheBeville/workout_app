import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Progress',
        ),
      ),
      body: const Center(child: Text('Progress')),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 3,
      ),
    );
  }
}
