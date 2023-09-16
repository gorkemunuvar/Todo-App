import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/todo/todo.dart';

import '../../../../core/injection/injection.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Todos')),
      ),
      backgroundColor: Colors.grey[300],
      body: BlocProvider(
        create: (context) => getIt<TodoCubit>()..init(),
        child: const _View(),
      ),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Expanded(child: _TodoListView()),
        CreateTodoField(
          onCreateButtonPressed: (text) => _onCreateButtonPressed(context, text),
        ),
      ],
    );
  }

  void _onCreateButtonPressed(BuildContext context, String text) {
    if (text.isEmpty) return;

    final todosCubit = context.read<TodoCubit>();
    final newTodo = Todo(id: '1223', title: text, isCompleted: false);

    todosCubit.createTodo(newTodo);
  }
}

class _TodoListView extends StatelessWidget {
  const _TodoListView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoCubit, TodoState>(
      builder: (context, state) {
        final status = state.fetchingStatus;
        final showLoading = status.isInitial || status.isLoading;

        if (showLoading) {
          return const LoadingWidget();
        } else if (status.isSuccess) {
          return TodoListView(state.todos!);
        }

        return const CouldNotFetchWidget();
      },
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class CouldNotFetchWidget extends StatelessWidget {
  const CouldNotFetchWidget({super.key});

  static const _message = 'Could not fetch todos';

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(_message));
  }
}
