import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_demo_app/tasks.provider.dart';
import 'package:state_demo_app/tasks.screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Tasks())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'State Demo App',
        initialRoute: 'todo',
        routes: {
          'todo': (_) => TasksScreen(),
        },
      ),
    );
  }
}
