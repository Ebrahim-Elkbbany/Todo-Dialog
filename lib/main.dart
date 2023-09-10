import 'package:flutter/material.dart';
import 'package:todo_dialog/views/todo_view.dart';

import 'constant.dart';

void main() {
  runApp(const TodoDialogApp());
}

class TodoDialogApp extends StatelessWidget {
  const TodoDialogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: primaryColor,
            elevation: 0,
          ),

          scaffoldBackgroundColor: primaryColor,
          fontFamily: 'Raleway',


      ),
      home: const TodoView(),
    );
  }
}
