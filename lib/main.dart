import 'package:flutter/material.dart';
import 'package:task_planner/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tasks Planner',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
