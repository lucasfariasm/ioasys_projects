import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';
import 'package:localization/localization.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = [
      'assets/lang',
    ];
    return MaterialApp(
       localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        LocalJsonLocalization.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('pt', 'BR'),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        if (supportedLocales.contains(locale)) {
          return locale;
        }

        if (locale?.languageCode == 'pt') {
          return const Locale('pt', 'BR');
        } else if (locale?.languageCode == 'es') {
          return const Locale('es', 'ES');
        }

        return const Locale('en', 'US');
      },
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
