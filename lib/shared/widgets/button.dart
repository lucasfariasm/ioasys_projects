import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String textButton;
  final VoidCallback onPressed;
  final Color colorButton;

  const Button({
    Key? key,
    required this.textButton,
    required this.onPressed,
    required this.colorButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(textButton),
        style: ElevatedButton.styleFrom(
          primary: colorButton,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
      ),
    );
  }
}
