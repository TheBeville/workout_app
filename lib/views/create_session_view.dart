import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';

class CreateSessionView extends StatefulWidget {
  const CreateSessionView({Key? key}) : super(key: key);

  @override
  State<CreateSessionView> createState() => _CreateSessionViewState();
}

class _CreateSessionViewState extends State<CreateSessionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Create',
        ),
      ),
      body: const Center(child: Text('Create a session')),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: 4,
      ),
    );
  }
}
