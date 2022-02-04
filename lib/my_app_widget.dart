import 'package:flutter/material.dart';
import 'package:ioasys_projects/modules/calculator/calculator_page.dart';
import 'package:ioasys_projects/modules/chuck_norris/pages/categories/categories_page.dart';
import 'package:ioasys_projects/modules/chuck_norris/pages/joke/joke_page.dart';
import 'package:ioasys_projects/modules/currency_conversion/currency_conversion_page.dart';
import 'package:ioasys_projects/modules/login/login_page.dart';
import 'package:ioasys_projects/modules/splash/splash_page.dart';
import 'package:ioasys_projects/modules/todo/todo_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ioasys Projects',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xffC1007E),
          secondary: const Color(0xff9e9e9e),
        ),
        fontFamily: 'Poppins',
        toggleableActiveColor: const Color(0xffC1007E),
        iconTheme: const IconThemeData(color: Color(0xffC1007E)),
        listTileTheme: const ListTileThemeData(iconColor: Color(0xffC1007E)),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
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
