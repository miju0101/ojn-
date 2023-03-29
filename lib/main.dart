import 'package:flutter/material.dart';
import 'package:project2/theme.dart';
import 'package:project2/view/gymadd_screen.dart';
import 'package:project2/view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: LoginScreen()
    );
  }
}
