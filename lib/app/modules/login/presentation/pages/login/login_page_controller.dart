import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/app/app_module.dart';

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
      Modular.to.pushReplacementNamed(AppModule.routeHome);
    });
  }
}
