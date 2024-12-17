import 'package:flutter/material.dart';
import 'package:skype_1/pages/action.dart';
import 'package:skype_1/pages/app_policy.dart';
import 'package:skype_1/pages/login.dart';
import 'package:skype_1/pages/signup.dart';
import 'package:skype_1/pages/wellcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const Wellcome(),
        "/ Login": (context) => const LoginForm(),
        "/ Signup": (context) => const CreateAccount(),
        "/pa": (context) => const Ex(),
        "/pol": (context) => const AppPolicy()
      },
    );
  }
}
