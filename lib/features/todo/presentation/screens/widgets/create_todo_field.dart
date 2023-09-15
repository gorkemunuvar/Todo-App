import 'package:flutter/material.dart';

typedef OnCreateButtonPressed = void Function(String text);

class CreateTodoField extends StatefulWidget {
  const CreateTodoField({
    required this.onCreateButtonPressed,
    super.key,
  });

  final OnCreateButtonPressed onCreateButtonPressed;

  static const _hintText = 'What needs to be done?';
  static const _buttonTitle = 'Create';
  static const _padding = EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0);

  @override
  State<CreateTodoField> createState() => _CreateTodoFieldState();
}

class _CreateTodoFieldState extends State<CreateTodoField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: CreateTodoField._padding,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: CreateTodoField._hintText,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            ElevatedButton(
              onPressed: _onCreateButtonPressed,
              child: const Text(CreateTodoField._buttonTitle),
            ),
          ],
        ),
      ),
    );
  }

  void _onCreateButtonPressed() {
    widget.onCreateButtonPressed(_textController.text);
    _textController.clear();
  }
}
