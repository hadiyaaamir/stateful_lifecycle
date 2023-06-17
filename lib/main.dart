import 'package:flutter/material.dart';
import 'example1/lifecycle.dart';
import 'example2/lifecycle.dart';
import 'example3/lifecycle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Example 1'),
                Tab(text: 'Example 2'),
                Tab(text: 'Example 3'),
              ],
            ),
            title: const Text('Lifecycle of a Stateful Widget'),
            centerTitle: true,
          ),
          body: const TabBarView(
            children: [Example1(), Example2(), Example3()],
          ),
        ),
      ),
    );
  }
}
