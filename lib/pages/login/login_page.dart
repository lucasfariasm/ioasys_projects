import 'package:flutter/material.dart';
import 'package:ioasys_projects/widgets/button.dart';
import 'package:ioasys_projects/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset('assets/images/logo_ioasys.png'),
              const SizedBox(height: 100),
              const Text(
                'Seja bem-vindo!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              const Text(
                'Calculadora IMC',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                label: 'usuário',
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'senha',
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              const SizedBox(height: 20),
              Button(
                textButton: 'ENTRAR',
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/calculator');
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
