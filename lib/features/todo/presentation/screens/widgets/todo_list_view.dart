import 'package:flutter/material.dart';

import '../../../domain/domain.dart';
import 'todo_item/todo_item.dart';

class TodoListView extends StatelessWidget {
  const TodoListView(
    this.todos, {
    super.key,
  });

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: todos.map((todo) => TodoItem(todo: todo)).toList(),
    );
  }
}
