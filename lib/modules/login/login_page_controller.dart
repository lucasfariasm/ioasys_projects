import 'package:flutter/material.dart';

class LoginPageController {
  void onLoading(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CircularProgressIndicator(),
          ],
        );
      },
    );
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacementNamed('/calculator');
    });
  }
}
