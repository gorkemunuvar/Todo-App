import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  static const _padding = EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Padding(
        padding: _padding,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: _CheckBox(),
              ),
              Expanded(
                child: Text(
                  'Todo item ',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              _DeleteButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CheckBox extends StatefulWidget {
  const _CheckBox();

  @override
  State<_CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<_CheckBox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _value,
      onChanged: _onChanged,
    );
  }

  void _onChanged(bool? value) {
    setState(() => _value = value!);
  }
}

class _DeleteButton extends StatelessWidget {
  const _DeleteButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.delete),
    );
  }
}
