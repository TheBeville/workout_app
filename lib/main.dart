import 'package:flutter/material.dart';

import './views/workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Workout'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _doSomething() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        actions: const [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
      ),
      body: const Center(
        child: WorkoutSession(),

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Row(
        //       children: [
        //         const Spacer(),
        //         const Text('New Workout'),
        //         Container(width: 16),
        //         const IconButton(onPressed: null, icon: Icon(Icons.create)),
        //         const Spacer(),
        //       ],
        //     ),
        //     Row(
        //       children: [
        //         const Spacer(),
        //         const Text('Past Workouts'),
        //         Container(width: 16),
        //         const IconButton(onPressed: null, icon: Icon(Icons.history)),
        //         const Spacer(),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
