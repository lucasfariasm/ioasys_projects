import 'package:flutter/material.dart';
import 'package:ioasys_projects/pages/calculator/calculator_page.dart';
import 'package:ioasys_projects/pages/currency_conversion/currency_conversion_page.dart';
import 'package:ioasys_projects/pages/login/login_page.dart';
import 'package:ioasys_projects/pages/todo/todo_list_page.dart';

void main() {
  runApp(const MyApp());
}

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
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/calculator': (context) => const CalculatorPage(),
        '/todo': (context) => const TodoListPage(),
        '/currency_conversion': (context) => const CurrencyConversionPage(),
      },
    );
  }
}
