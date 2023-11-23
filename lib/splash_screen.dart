import 'package:flutter/material.dart';
import 'package:module_9_assignment/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToNextPage();
    super.initState();
  }

  void goToNextPage() {
    Future.delayed(const Duration(seconds: 4)).then((value) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return const HomeScreen();
      }), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(
                "assets/images/weather.png",
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
