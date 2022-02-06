import 'package:flutter/material.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';
import 'package:ioasys_projects/shared/widgets/button.dart';
import 'package:ioasys_projects/shared/widgets/custom_text_field.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: CustomTextField(
                label: 'Nome',
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: CustomTextField(
                label: 'Título',
                fillColor: Colors.white,
                filled: true,
                borderStyle: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Button(
                textButton: 'Salvar',
                onPressed: () {
                  // controller.onLoading(context);
                },
                colorButton: AppTheme.colors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
