import 'package:flutter/material.dart';

import '../../domain/domain.dart';
import 'widgets/widgets.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Todos')),
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Expanded(child: TodoListView([])),
          CreateTodoField(onCreateButtonPressed: _onCreateButtonPressed),
        ],
      ),
    );
  }

  void _onCreateButtonPressed(String text) {}
}
