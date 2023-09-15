import 'package:flutter/material.dart';

typedef OnCheckBoxChanged = void Function(bool? value);

class CheckBox extends StatelessWidget {
  const CheckBox({
    this.initialValue = false,
    required this.onChanged,
    super.key,
  });

  final bool initialValue;
  final OnCheckBoxChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: initialValue,
      onChanged: onChanged,
    );
  }
}
