import 'package:flutter/material.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final bool obscureText;
  final Color? fillColor;
  final bool filled;
  final OutlineInputBorder? borderStyle;

  const CustomTextField({
    Key? key,
    required this.label,
    this.controller,
    this.obscureText = false,
    this.fillColor,
    this.filled = false,
    this.borderStyle,
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
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppTheme.colors.border, width: 2.0)
          ),
          contentPadding: const EdgeInsets.only(bottom: 25, left: 15),
          fillColor: fillColor,
          filled: filled,
          border: borderStyle,
          labelText: label,
          hintStyle: TextStyle(color: AppTheme.colors.secondary),
        ),
      ),
    );
  }
}
