import 'package:flutter/material.dart';

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
      body: const TodoListView(),
    );
  }
}
