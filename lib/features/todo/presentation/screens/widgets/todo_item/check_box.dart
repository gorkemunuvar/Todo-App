import 'package:flutter/material.dart';

typedef OnCheckBoxChanged = void Function(bool value);

class CheckBox extends StatefulWidget {
  const CheckBox({
    this.initialValue = false,
    required this.onChanged,
    super.key,
  });

  final bool initialValue;
  final OnCheckBoxChanged onChanged;

  @override
  State<CheckBox> createState() => CheckBoxState();
}

class CheckBoxState extends State<CheckBox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _value,
      onChanged: _onChanged,
    );
  }

  void _onChanged(bool? value) {
    setState(() {
      _value = value!;
      widget.onChanged(_value);
    });
  }
}
