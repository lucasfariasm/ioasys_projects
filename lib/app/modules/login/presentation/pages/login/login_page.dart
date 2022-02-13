import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';
import 'package:ioasys_projects/shared/widgets/button.dart';
import 'package:ioasys_projects/shared/widgets/custom_text_field.dart';

import 'login_page_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Image.asset('assets/images/logo_ioasys.png',
                  color: AppTheme.colors.primary),
              const SizedBox(height: 40),
              Text(
                'Seja bem-vindo!',
                style: TextStyle(
                  color: AppTheme.colors.primary,
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                label: 'usuário',
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'senha',
                obscureText: true,
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              Button(
                textButton: 'Entrar',
                onPressed: () {
                  controller.onLoading(context);
                },
                colorButton: AppTheme.colors.primary,
              ),
              const SizedBox(height: 10),
              Button(
                textButton: 'Criar uma conta',
                onPressed: () {
                  Modular.to.pushNamed("create-account");
                },
                colorButton: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
