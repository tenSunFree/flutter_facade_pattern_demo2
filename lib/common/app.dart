import 'package:flutter/material.dart';
import 'package:flutter_facade_pattern_demo/home/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: HomeScreen());
  }
}