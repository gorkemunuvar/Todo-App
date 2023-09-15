import 'package:flutter/material.dart';

import 'check_box.dart';
import 'delete_button.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  static const _padding = EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
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
                  initialValue: false,
                  onChanged: (value) {},
                ),
              ),
              const Expanded(
                child: Text(
                  'Todo item',
                  style: TextStyle(fontSize: 17.0),
                ),
              ),
              DeleteButton(
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
