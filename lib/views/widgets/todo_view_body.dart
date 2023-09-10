import 'package:flutter/material.dart';
import 'package:todo_dialog/constant.dart';
import 'package:todo_dialog/views/widgets/custom_text_button.dart';
import 'package:todo_dialog/views/widgets/todo_model.dart';

class TodoViewBody extends StatefulWidget {
  const TodoViewBody({Key? key}) : super(key: key);

  @override
  State<TodoViewBody> createState() => _TodoViewBodyState();
}

class _TodoViewBodyState extends State<TodoViewBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: TodoModel.todoItem.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            TodoModel.todoItem[index].title,
            style: Styles.textStyle22,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            TodoModel.todoItem[index].time,
            style: Styles.textStyle18,
          ),
          trailing: IconButton(
              onPressed: () {
                dialog(index);
              },
              icon: const Icon(
                Icons.delete_outlined,
                color: Colors.white,
              )),
        );
      },
    );
  }

  void dialog(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Delete',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          content: const Text(
            'Are you sure you want to delete this item ?',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black45,
            ),
          ),
          actions: [
            CustomTextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              text: 'Cancel',
              textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextButton(
                onPressed: () {
                  setState(() {
                    TodoModel.todoItem.removeAt(index);
                    Navigator.pop(context);
                  });
                },
                text: 'Yes',
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
