import 'package:flutter/material.dart';

class CustomTextFieldCurrencie extends StatelessWidget {
  final OutlineInputBorder? borderStyle;
  final String? labelText;
  final String prefix;
  final TextInputType? keyboard;
  final void Function(double) onChanged;
  final double? value;
  final TextEditingController? controller;

  const CustomTextFieldCurrencie({
    Key? key,
    this.borderStyle,
    this.labelText,
    required this.prefix,
    this.keyboard,
    required this.onChanged,
    this.value,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: TextField(
        onChanged: (value) {
          value.isNotEmpty ? onChanged(double.parse(value)) : onChanged(0);
        },
        controller: controller,
        keyboardType: keyboard,
        decoration: InputDecoration(
          border: borderStyle,
          hintStyle: const TextStyle(color: Color(0xff767676)),
          labelText: labelText,
          prefix: Text(prefix),
        ),
      ),
    );
  }
}
