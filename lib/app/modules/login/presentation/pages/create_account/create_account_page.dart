import 'package:flutter/material.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';
import 'package:ioasys_projects/shared/widgets/button.dart';
import 'package:ioasys_projects/shared/widgets/custom_text_field.dart';
import 'package:localization/localization.dart';

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
                'login_create_account'.i18n(),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 50),
              CustomTextField(
                label: 'login_create_account_name'.i18n(),
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'login_create_account_email'.i18n(),
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'login_create_account_password'.i18n(),
                obscureText: true,
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'login_create_account_password_confirm'.i18n(),
                obscureText: true,
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              Button(
                textButton: 'login_create_account_button'.i18n(),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/login/');
                },
                colorButton: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  style: TextStyle(color: AppTheme.colors.secondary),
                  children: [
                    TextSpan(text: 'login_create_account_already_login'.i18n()),
                    TextSpan(
                      text: 'login_create_account_do_login'.i18n(),
                      style: const TextStyle(
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
