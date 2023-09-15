import 'package:flutter/material.dart';

import 'todo_item/todo_item.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TodoItem(),
        TodoItem(),
        TodoItem(),
        TodoItem(),
      ],
    );
  }
}
