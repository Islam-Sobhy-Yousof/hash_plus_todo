import 'package:flutter/material.dart';
import 'package:todo_app/pages/home_page.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Caveat',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
