import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/domain.dart';
import '../../../cubit/todo_cubit.dart';
import 'check_box.dart';
import 'delete_button.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    required this.todo,
    super.key,
  });

  final Todo todo;

  static const _height = 80.0;
  static const _padding = EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0);

  @override
  Widget build(BuildContext context) {
    final textDecoration = todo.isCompleted ? TextDecoration.lineThrough : TextDecoration.none;

    return SizedBox(
      height: _height,
      child: Padding(
        padding: _padding,
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: CheckBox(
                  initialValue: todo.isCompleted,
                  onChanged: (value) => _onCheckBoxChanged(context, value),
                ),
              ),
              Expanded(
                child: Text(
                  todo.title,
                  style: TextStyle(
                    fontSize: 17.0,
                    decoration: textDecoration,
                  ),
                ),
              ),
              DeleteButton(
                onPressed: () => _onDeletePressed(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onDeletePressed(BuildContext context) {
    final todoCubit = context.read<TodoCubit>();
    todoCubit.deleteTodo(todo.id!);
  }

  void _onCheckBoxChanged(BuildContext context, bool? value) {
    if (value == null) return;

    final todoCubit = context.read<TodoCubit>();
    todoCubit.updateTodoStatus(todo.id!, value);
  }
}
