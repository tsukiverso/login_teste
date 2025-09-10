import 'package:flutter/material.dart';
import 'package:login_app/src/auth/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), 
      debugShowCheckedModeBanner: false,
    );
  }
}