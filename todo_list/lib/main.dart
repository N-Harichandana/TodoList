import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/taskdata.dart';
import 'package:todo_list/screens/TaskScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: taskScreen(),
      ),
    );
  }
}
