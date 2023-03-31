import 'package:flutter/material.dart';
import 'package:state_demo_app/tasks.screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Demo App',
      initialRoute: 'todo',
      routes: {'todo': (_) => TasksScreen()},
    );
  }
}
