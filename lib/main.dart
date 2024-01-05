import 'package:auth_ui_hw_29/pages/login_page.dart';
import 'package:auth_ui_hw_29/pages/onboarding_page.dart';
import 'package:auth_ui_hw_29/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: 'Registration UI',
      debugShowCheckedModeBanner: false,
      initialRoute:  '/onboarding_page',

      routes: {
        '/onboarding_page' : (context) => const OnBoardingPage(),
        '/login_page' : (context) => const LoginPage(),
        '/sign_up_page' : (context) => const SignUpPage()

      },
    );
  }
}
