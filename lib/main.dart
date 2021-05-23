import 'package:flutter/material.dart';
import 'package:todo_list/components/taskData.dart';
import 'package:todo_list/screens/homescreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        home: HomeScreen()
      ),
    );
  }
}

