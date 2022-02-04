import 'package:flutter/material.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';
import 'package:ioasys_projects/shared/widgets/button.dart';
import 'package:ioasys_projects/shared/widgets/custom_text_field.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.background,
        leading: BackButton(color: Theme.of(context).colorScheme.primary),
        elevation: 0,
      ),
      backgroundColor: AppTheme.colors.background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Criando uma conta',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 50),
              CustomTextField(
                label: 'Nome',
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'E-mail',
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'Senha',
                obscureText: true,
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'Confirme sua senha',
                obscureText: true,
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              Button(
                textButton: 'Criar conta',
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                colorButton: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  style: TextStyle(color: AppTheme.colors.secondary),
                  children: const [
                    TextSpan(text: 'Já tem uma conta? '),
                    TextSpan(
                      text: 'Faça login.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
