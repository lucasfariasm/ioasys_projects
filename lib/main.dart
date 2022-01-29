import 'package:flutter/material.dart';
import 'package:ioasys_projects/pages/calculator/calculator_page.dart';
import 'package:ioasys_projects/pages/login/login_page.dart';

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
        primaryColor: const Color(0xffC1007E),
        fontFamily: 'Poppins',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/calculator': (context) => const CalculatorPage(),
      },
    );
  }
}
