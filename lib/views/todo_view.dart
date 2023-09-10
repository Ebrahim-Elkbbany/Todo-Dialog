import 'package:flutter/material.dart';
import 'package:todo_dialog/constant.dart';
import 'package:todo_dialog/views/widgets/todo_view_body.dart';

class TodoView extends StatelessWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Todo List',
          style: Styles.textStyle25,
        ),
      ),
      body: const TodoViewBody(),
    );
  }
}
