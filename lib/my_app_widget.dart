import 'package:flutter/material.dart';
import 'package:ioasys_projects/modules/calculator/calculator_page.dart';
import 'package:ioasys_projects/modules/chuck_norris/pages/categories/categories_page.dart';
import 'package:ioasys_projects/modules/chuck_norris/pages/joke/joke_page.dart';
import 'package:ioasys_projects/modules/currency_conversion/currency_conversion_page.dart';
import 'package:ioasys_projects/modules/home/home_page.dart';
import 'package:ioasys_projects/modules/login/login_page.dart';
import 'package:ioasys_projects/modules/login/pages/create_account/create_account_page.dart';
import 'package:ioasys_projects/modules/splash/splash_page.dart';
import 'package:ioasys_projects/modules/todo/todo_list_page.dart';
import 'package:ioasys_projects/shared/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/login/create-account': (context) => const CreateAccountPage(),
        '/home': (context) => const HomePage(),
        '/calculator': (context) => const CalculatorPage(),
        '/todo': (context) => const TodoListPage(),
        '/currency_conversion': (context) => const CurrencyConversionPage(),
        '/chuck_categories': (context) => const ChuckCategoriesPage(),
        '/joke': (context) => JokePage(
              category: ModalRoute.of(context)?.settings.arguments as String,
            ),
      },
    );
  }
}
