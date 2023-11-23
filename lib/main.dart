import 'package:flutter/material.dart';
import 'package:module_9_assignment/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather',
      theme: ThemeData(
      ),
      home:  SplashScreen(),
    );
  }
}

