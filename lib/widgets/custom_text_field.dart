import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final Color? fillColor;
  final bool filled ;
  final OutlineInputBorder? borderStyle;

  const CustomTextField({
    Key? key,
    required this.label,
    this.controller,
    this.obscureText = false,
    this.fillColor,
    this.filled = false,
    this.borderStyle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: filled,
          border: borderStyle,
          hintText: label,
          hintStyle: const TextStyle(color: Color(0xff767676)),
        ),
      ),
    );
  }
}
