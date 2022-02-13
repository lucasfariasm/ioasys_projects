import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ioasys Projects',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppTheme.colors.primary,
          secondary: AppTheme.colors.secondary,
        ),
        fontFamily: 'Poppins',
        toggleableActiveColor: AppTheme.colors.primary,
        iconTheme: IconThemeData(color: AppTheme.colors.primary),
        listTileTheme: ListTileThemeData(iconColor: AppTheme.colors.primary),
      ),
    ).modular();
  }
}
